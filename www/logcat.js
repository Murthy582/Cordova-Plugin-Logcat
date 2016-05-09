module.exports = {
	sendLogs:function(successCB,failureCB){
		cordova.exec(successCB, failureCB, "LogCat","sendLogs", []);
	}
};

