module.exports = {
  webserver: {
    port: process.env.PORT || 3001
  },
  database: {
    user: 'ptrack',
    password: 'ptrack',
    connectString: 'localhost/orcl',
    poolMax: 10,
    poolMin: 10,
    poolIncrement: 0,
    _enableStats: true // pool stats
  }
};