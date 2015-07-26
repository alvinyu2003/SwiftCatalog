//
//  AlertControllerViewControllerTests.swift
//  UICatalog
//
//  Created by Alvin Yu on 3/31/15.
//  Copyright (c) 2015 Alvin Yu. All rights reserved.
//

import UIKit
import XCTest

class AlertControllerViewControllerTests: XCTestCase {

    var storyboard: UIStoryboard?
    var sut: AlertControllerViewController?
    
    override func setUp() {
        super.setUp()
        self.storyboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))
        self.sut = self.storyboard?.instantiateViewControllerWithIdentifier("alertController") as? AlertControllerViewController
        self.sut?.loadView()
    }
    
    override func tearDown() {
        self.storyboard = nil
        self.sut = nil
        super.tearDown()
    }

    func testThatAlertControllerViewControllerCanBeInstantiated () {
        XCTAssertNotNil(self.sut, "view controller can be instantiated")
    }
    
    func testThatAlertButtonShouldBeConnected () {
        XCTAssertNotNil(self.sut?.alertButton, "alert button should be connected")
    }
    
    func testThatActionSheetShouldBeConnected () {
        XCTAssertNotNil(self.sut?.actionSheetButton, "action sheet button should be connected")
    }
    
    func testThatTextFieldAlertShouldBeConnected () {
        XCTAssertNotNil(self.sut?.textFieldAlertButton, "textfield alert button should be connected")
    }
    
    func testAlertButtonIBAction () {
        XCTAssertTrue(self.checkButtonAction(self.sut?.alertButton, action: "showAlert"), "alert button is not connected")
    }
    
    func testActionSheetButtonIBAction () {
        XCTAssertTrue(self.checkButtonAction(self.sut?.actionSheetButton, action: "showActionSheet"), "alert button is not connected")
    }
    
    func testTestFieldAlertButtonIBAction () {
        XCTAssertTrue(self.checkButtonAction(self.sut?.textFieldAlertButton, action: "showTextFieldAlert"), "textField button alert is not connected")
    }
    
    func checkButtonAction(button: UIButton?, action: String) -> Bool {
         var actions: [String]? = button?.actionsForTarget(self.sut!, forControlEvent: UIControlEvents.TouchUpInside) as? [String]
        if let unwrappedActions = actions {
            return contains(unwrappedActions, action)
        }
        else {
            return false
        }
    }
}
