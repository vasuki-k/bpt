const oracledb = require('oracledb');
const http = require('http');
const express = require('express');
const morgan = require('morgan');
const bodyParser = require('body-parser');
const config = require('./config');
const publicApi = require('./public-api/public-api.js');
const dbApi = require('./db-api/db-api.js');

let app;
let httpServer;
let openHttpConnections = {};

// Node.js used 4 background threads by default, increase to handle max DB pool.
// This must be done before any other calls that will use the libuv threadpool.
process.env.UV_THREADPOOL_SIZE = config.database.poolMax + 4;

console.log('Creating database connection pool');

oracledb.createPool(config.database)
  .then(() => {
    console.log('Connection pool created');
  
    initWebServer();
  })
  .catch(err => {
    console.log('Failed to create connection pool');
    console.log(err);
  });

function initWebServer() {
  console.log('Initializing webserver');
  
  app = express();
  httpServer = http.Server(app);

  app.use(morgan('combined')); // logger
  app.use(bodyParser.json());
  app.use('/', express.static('web'));

  // Enable CORS since we may host the app on one port and the api on another
  app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
    res.header('Access-Control-Allow-Headers', 'Content-Type, Authorization');

    next();
  });

  app.use('/api', publicApi.router);
  dbApi.init(httpServer);
  app.use('/db_api', dbApi.router);

  app.use(handleError);
  
  httpServer.on('connection', (conn) => {
    const key = conn.remoteAddress + ':' + (conn.remotePort || '');

    openHttpConnections[key] = conn;

    conn.on('close', function() {
      delete openHttpConnections[key];
    });
  });

  httpServer.listen(config.webserver.port, () => {
    console.log('Webserver listening on localhost:' + config.webserver.port);
  });
}

function handleError(err, req, res, next) {
  console.log('An unexpeded error occured', err);
  res.status(500).send({message: 'An error has occurred, please contact support if the error persists'});
  //shutdown(); // Process would usually be restarted via something like http://pm2.keymetrics.io/
}

function shutdown() {    
  console.log('Shutting down');
  console.log('Closing web server');

  for (let key in openHttpConnections) {
    openHttpConnections[key].destroy();
  }

  if (httpServer) {
    httpServer.close(() => {
      let pool;
      
      console.log('Web server closed');

      pool = oracledb.getPool();
      
      pool._logStats();

      pool.close()
        .then(() => {
          console.log('node-oracledb connection pool terminated');
          console.log('Exiting process');
          process.exit(0);
        })
        .catch((err) => {
          console.log('Error occurred while terminating node-oracledb connection pool', err);
          console.log('Exiting process');
          process.exit(0);
        });
    });
  }
}

process.on('uncaughtException', (err) => {
  console.log('Uncaught exception ', err.stack);

  shutdown();
});

process.on('SIGTERM', () => {
  console.log('Received SIGTERM');

  shutdown();
});

process.on('SIGINT', () => {
  console.log('Received SIGINT');

  shutdown();
});
