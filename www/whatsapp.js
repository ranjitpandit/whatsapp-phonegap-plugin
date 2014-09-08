var exec = require('cordova/exec');

var Whatsapp = {
    send: function(send_to, successCB, errorCB) {
        console.warn("Sending whatsapp : " + send_to);
        exec(successCB, errorCB, "Whatsapp", "send", [send_to]);
    }
};

module.exports = Whatsapp;