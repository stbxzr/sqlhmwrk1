const inquirer = require("inquirer");
const addJs = require("./add");
const viewLst = require("./viewList")

let sqlExtension;
 
function promptEx(connection) {
  sqlExtension = connection;
  mainMenu();
}

function mainMenu() {
  inquirer
    .prompt({
      name: "store",
      type: "list",
      message: "What would you like to do?",
      choices: ["Add", "View", "Update", "Exit"],
    })

    .then((answer) => {
      switch (answer.store) {
        case "Add":
            addJs.addMenu(sqlExtension, mainMenu);
          break;
        case "View":
            viewLst.previewList(sqlExtension, mainMenu);
          break;
        case "Update":
          break;
        case "Exit":
          sqlExtension.end();
          process.exit();
        default:
          break;
      }
    });
}

module.exports = {promptEx};
