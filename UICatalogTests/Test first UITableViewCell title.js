
var target = UIATarget.localTarget();
UIALogger.logStart("Logging element tree ...");
UIATarget.localTarget().logElementTree();
var cell = UIATarget.localTarget().frontMostApp().mainWindow().tableViews()[0].cells().firstWithPredicate("name beginswith 'Activity'");
if (cell.isValid()) {
    UIALogger.logPass();
}
else {
    UIALogger.logFail();
}