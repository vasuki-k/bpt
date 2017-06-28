const express = require('express');
const socketio = require('socket.io');
const request = require('request');
const config = require('../config');
const router = express.Router();
let io;

function init(httpServer) {
    io = socketio(httpServer);

    io.on('connect', function (socket) {
        console.log('Client Connected');
    });
}

module.exports.init = init;

router.route('/zoneCount/')
        .get((req, res, next) => {
            let getZoneCountUrl = 'http://localhost:' + config.webserver.port + '/api/zoneCount';

            request.get(getZoneCountUrl, (err, response, body) => {
                if (err || response.statusCode !== 200) {
                    console.log(err);
                    return;
                }

                console.log(body);
                io.emit('updateZoneCounts', body);
                res.end();
            });
            let getRegCountUrl = 'http://localhost:' + config.webserver.port + '/api/registrationCount';

            request.get(getRegCountUrl, (err, response, body) => {
                if (err || response.statusCode !== 200) {
                    console.log(err);
                    return;
                }

                console.log(body);
                io.emit('registrationCount', body);
                res.end();
            });
            
            let getattendCountUrl = 'http://localhost:' + config.webserver.port + '/api/attendedCount';

            request.get(getattendCountUrl, (err, response, body) => {
                if (err || response.statusCode !== 200) {
                    console.log(err);
                    return;
                }

                console.log(body);
                io.emit('attendedCount', body);
                res.end();
            });
            
            let getpresentCountUrl = 'http://localhost:' + config.webserver.port + '/api/presentCount';

            request.get(getpresentCountUrl, (err, response, body) => {
                if (err || response.statusCode !== 200) {
                    console.log(err);
                    return;
                }

                console.log(body);
                io.emit('presentCount', body);
                res.end();
            });

        });

module.exports.router = router;