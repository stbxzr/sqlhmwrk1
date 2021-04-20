const inquirer = require("inquirer");
const viewJs = require("./view");

function addMenu(sqlExtension, mainMenu) {
  inquirer
    .prompt({
      name: "store",
      type: "list",
      message: "What would you like to add?",
      choices: ["Department", "Role", "Employee", "Main menu"],
    })

    .then((answer) => {
      switch (answer.store) {
        case "Department":
          addDepartment(sqlExtension, mainMenu);
          break;
        case "Role":
          break;
        case "Employee":
          break;
        case "Main menu":
          mainMenu();
        default:
          break;
      }
    });
}

function addDepartment(sqlExtension, mainMenu) {
  inquirer
    .prompt({
      name: "store",
      type: "input",
      message: "What is your department of choice?",
    })

    .then((answer) => {
      let query = "INSERT INTO department (name) VALUES ?";
      sqlExtension.query(query, [[[answer.store]]], (err, res) => {
        if (err) throw err;
      });

      viewJs.viewDepartments(sqlExtension, mainMenu);


    });
}

module.exports = { addMenu };
