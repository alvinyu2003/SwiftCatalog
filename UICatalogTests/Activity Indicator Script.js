
var target = UIATarget.localTarget();

target.frontMostApp().mainWindow().tableViews()[0].tapWithOptions({tapOffset:{x:0.43, y:0.14}});
target.frontMostApp().mainWindow().buttons()["Start"].tap();
target.frontMostApp().mainWindow().buttons()["Stop"].tap();
target.frontMostApp().mainWindow().segmentedControls()[0].buttons()["Green"].tap();
target.frontMostApp().mainWindow().buttons()["Start"].tap();
target.frontMostApp().mainWindow().buttons()["Stop"].tap();
target.frontMostApp().mainWindow().segmentedControls()[0].buttons()["Blue"].tap();
target.frontMostApp().mainWindow().buttons()["Start"].tap();
target.frontMostApp().mainWindow().buttons()["Stop"].tap();
target.frontMostApp().navigationBar().leftButton().tap();
