'use strict';
const {
    version,
    description
} = require('../../package.json')

module.exports = {
    getStatus: getStatus
};

function getStatus(req, res) {
    var myApp = [];
    var obj = {
        version,
        description
    };
    myApp.push(obj);
    res.json({
        myapplication: myApp
    })
}