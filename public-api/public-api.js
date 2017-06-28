const oracledb = require('oracledb');
const express = require('express');
const router = express.Router();
const request = require('request');

module.exports.router = router;


router.route('/zoneCount/')
        .get((req, res, next) => {
            let conn;
            let result;

            oracledb.getConnection()
                    .then(c => {
                        conn = c;

                        return conn.execute(
                                ` SELECT
                                    pt.*,
                                    RANK() OVER(
                                        ORDER BY "users" DESC
                                    ) "rank",
                                    SUM("users") OVER() "totalUsers"
                                FROM
                                    (
                                        SELECT
                                            a.loc_id,
                                            b.loc_name,
                                            count(*) "users"
                                        FROM
                                            person_tbl a, location_tbl b
                                            where a.loc_id=b.loc_id
                                            group by a.loc_id,b.loc_name
                                    ) pt`,
                                {}, // no binds
                                {
                                    outFormat: oracledb.OBJECT
                                }
                        );
                    })
                    .then(r => {
                        result = r;

                        return conn.close();
                    })
                    .then(() => {
                        res.status(200).json({
                            items: result.rows
                        });
                    })
                    .catch(next);
        });
        
router.route('/registrationCount/')
        .get((req, res, next) => {
            let conn;
            let result;

            oracledb.getConnection()
                    .then(c => {
                        conn = c;

                        return conn.execute(
                                ` select count(*) as count from PERSON_TBL`,
                                {}, // no binds
                                {
                                    outFormat: oracledb.OBJECT
                                }
                        );
                    })
                    .then(r => {
                        result = r;

                        return conn.close();
                    })
                    .then(() => {
                        res.status(200).json({
                            items: result.rows
                        });
                    })
                    .catch(next);
        });

router.route('/attendedCount/')
        .get((req, res, next) => {
            let conn;
            let result;

            oracledb.getConnection()
                    .then(c => {
                        conn = c;

                        return conn.execute(
                                `SELECT COUNT(*) AS COUNT FROM (SELECT DISTINCT UUID FROM EVENT_TBL WHERE READ_DATE LIKE (SELECT SYSDATE FROM DUAL))`,
                                {}, // no binds
                                {
                                    outFormat: oracledb.OBJECT
                                }
                        );
                    })
                    .then(r => {
                        result = r;

                        return conn.close();
                    })
                    .then(() => {
                        res.status(200).json({
                            items: result.rows
                        });
                    })
                    .catch(next);
        });
        
router.route('/presentCount/')
        .get((req, res, next) => {
            let conn;
            let result;

            oracledb.getConnection()
                    .then(c => {
                        conn = c;

                        return conn.execute(
                                ` select count(*) as count from PERSON_TBL where ((select (sysdate-TO_DATE('01-01-1970 00:00:00','DD-MM-YYYY HH24:MI:SS'))*24*60*60*1000 from dual)-(330*60*1000)-READ_TIME)<(5*60*1000)`,
                                {}, // no binds
                                {
                                    outFormat: oracledb.OBJECT
                                }
                        );
                    })
                    .then(r => {
                        result = r;

                        return conn.close();
                    })
                    .then(() => {
                        res.status(200).json({
                            items: result.rows
                        });
                    })
                    .catch(next);
        });
router.route('/update_event')
        .post((req, res, next) => {
            let conn;
            oracledb.getConnection()
                    .then(c => {
                        conn = c;

                        return conn.execute(
                                `BEGIN update_event('${req.body.uuid}', '${req.body.reader}', '${req.body.antenna}', '${req.body.readertime}', '${req.body.rssi}', '${req.body.status}'); END;`
                                );

                    })
                    .then(() => {
                        res.status(200).end();
                        conn.close();
                        
                       
                        request('http://localhost:3001/db_api/zoneCount', function (error, response, body) {
                            console.log('error:', error);
                        });

                        return;
                    })
                    .then(() => {
                        res.status(201).end();
                    })
                    .catch(next);
        });
