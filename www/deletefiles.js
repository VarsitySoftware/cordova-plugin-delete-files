/*global cordova,window,console*/
/**
 * A Delete Files plugin for Cordova
 * 
 * Developed by John Weaver for Varsity Software
 */

var DeleteFiles = function() {

};

DeleteFiles.prototype.delete = function(success, fail, options) {
	if (!options) {
		options = {};
	}

	return cordova.exec(success, fail, "DeleteFiles", "getPictures", [options]);
};

window.deleteFiles = new DeleteFiles();
