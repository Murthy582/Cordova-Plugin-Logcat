module.exports = {
	isPatternEnabled:function(successCB,failureCB){
		cordova.exec(successCB, failureCB, "PatternCheck","isPatternEnabled", []);
	}
};

