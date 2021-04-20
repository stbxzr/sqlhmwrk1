const mysql = require('mysql');
const menu = require('./assets/js/prompt');


const connection = mysql.createConnection({
  host: 'localhost',
  // Your port; if not 3306
  port: 3306,
  // Your username
  user: 'root',
  // Be sure to update with your own MySQL password!
  password: '',
  database: 'employeeDB',
});


connection.connect((err) => {
 if (err) throw err;

 console.log(`hello!\n`);
 menu.promptEx(connection);
});
