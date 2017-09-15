component {
	this.applicationTimeout = createTimeSpan(0, 2, 0, 0);
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);

	function onRequestStart() {
		writeLog("writeLog() called from onRequeststart()");
	}
	function onRequest() {
		writeLog("writeLog() called from onRequest()");
	}
}
