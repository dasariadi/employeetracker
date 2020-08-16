// Packages
const mysql = require("mysql");
const inquirer = require("inquirer");
require("console.table");
var connection = require("./connection.js")


const viewOptions = [
    "View Departments",
    "View roles",
    "View Employees",
    "Update Employee",
    "exit"
];

const employeeOptions = [
    "Joe Staller",
    "Laith Harb",
    "Dasa Kamarwan",
    "Justin Trudeau",
    "Theresa Tam",
    "Beyonce Knowles-Carter",
    "Mariah Carey",
    "exit"
];

const updateOptions = [
    "First Name",
    "Last Name",
    "roles",
    "exit"
];

runSearch();

function runSearch() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "What would you like to do?",
            choices: viewOptions
        })
        .then(function (answer) {
            switch (answer.action) {
                case viewOptions[0]:
                    departmentView();
                    break;

                case viewOptions[1]:
                    rolesView();
                    break;

                case viewOptions[2]:
                    employeeView();
                    break;

                case viewOptions[3]:
                    updateEmployee();

                case updateOptions[4]:
                    connection.end();
                    break
            }
        })
}

function departmentView() {
    var sqlStr = "SELECT * FROM department";
    connection.query(sqlStr, function (err, result) {
        if (err) throw err;

        console.table(result)
        runSearch();
    })
}

function employeeView() {
    var sqlStr = "SELECT first_name, last_name FROM employee ";
    connection.query(sqlStr, function (err, result) {
        if (err) throw err;

        console.table(result)
        runSearch();
    })
}

function rolesView() {
    var sqlStr = "SELECT * FROM roles";
    connection.query(sqlStr, function (err, result) {
        if (err) throw err;

        console.table(result)
        runSearch();
    })
}


const updateEmployee = () => {

    function runUpdateSearch() {
        inquirer
            .prompt({
                name: "action",
                type: "list",
                message: "Which employee do you want to update?",
                choices: employeeOptions
            })
           
    }
    runUpdateSearch();  
}