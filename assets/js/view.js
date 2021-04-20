const inquirer = require("inquirer");
const tbl = require("console.table");

function viewDepartments(sqlExtension, mainMenu) {
  let query = "SELECT * FROM department";
  sqlExtension.query(query, (err, res) => {
    if (err) throw err;

    console.table(res);
    mainMenu();
  });
}

module.exports = { viewDepartments };
