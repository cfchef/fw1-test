component extends="../src/framework/one"
	output=false
{
	this.applicationTimeout = createTimeSpan(0, 2, 0, 0);
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);
	this.mappings = {
		"/src" = expandPath("../src"),
		"/framework" = expandPath("../src/framework")
	};

	// FW/1 settings
	variables.framework = {
		base: "/src",
		defaultSection: "main",
		defaultItem: "default",
		error: "main.error",
		diEngine: "di1",
		routes: [
			{ "/" = "/main/default" }
		],
		trace: true,
		reloadApplicationOnEveryRequest: true
	};

	function setupRequest() {
		writeLog("writeLog() called from setupRequest()");
	}

	public string function onMissingView(struct rc) {
		return "Error 404 - Page not found.";
	}
}
