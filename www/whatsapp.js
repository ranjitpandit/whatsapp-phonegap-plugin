cordova.define("mobi.moica.whatsapp.whatsapp", function(require, exports, module) {
var exec = require('cordova/exec');

var Whatsapp = {
    send: function(send_to,text, successCB, errorCB) {
        console.warn("Sending whatsapp : " + send_to);
        exec(successCB, errorCB, "Whatsapp", "send", [send_to, text ]);
    }
};

module.exports = Whatsapp;
});
