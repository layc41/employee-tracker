const mysql = require("mysql2");

const connection = mysql.createConnection({
  host: "localhost",
  port: "3306",
  user: "root",
  password: "Abcd1234",
  database: 'employees'
});

connection.connect(function (err) {
  if (err) throw err;
});

module.exports = connection;