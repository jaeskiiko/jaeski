var mysql = require('mysql');
const db = mysql.createPool({
    host : 'localhost',
    user : 'root',
    password : 'January2023',
    database : 'vegeTable'
});

module.exports = db;