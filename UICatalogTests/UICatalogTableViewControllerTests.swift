//
//  TableViewControllerTests.swift
//  UICatalog
//
//  Created by Alvin Yu on 3/29/15.
//  Copyright (c) 2015 Alvin Yu. All rights reserved.
//

import UIKit
import XCTest

class UICatalogTableViewControllerTests: XCTestCase {

    var storyboard: UIStoryboard?
    var catalogTableViewController: UICatalogTableViewController?
    var tableView: UITableView?
    
    override func setUp() {
        super.setUp()
        self.storyboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))
        self.catalogTableViewController = self.storyboard?.instantiateViewControllerWithIdentifier("catalog") as? UICatalogTableViewController
        self.tableView = self.catalogTableViewController?.tableView
        self.catalogTableViewController?.loadView()

    }
    
    override func tearDown() {
        self.tableView = nil
        self.catalogTableViewController = nil
        self.storyboard = nil
        super.tearDown()
    }
    
    func testThatStoryboardExists() {
        XCTAssertNotNil(self.storyboard, "storyboard must exist")
    }
    
    func testThatUICatalogTableViewControllerCanBeInstantiated() {
        XCTAssertNotNil(self.catalogTableViewController, "catalog table view controller can be instantiated")
    }

    func testThatTableViewExists () {
        XCTAssertNotNil(self.tableView, "table view should exist")
    }
    
    func testThatTableViewCellExists() {
        let cell = self.tableView?.dequeueReusableCellWithIdentifier("TableViewCell", forIndexPath: NSIndexPath(forItem: 0, inSection: 0)) as! UITableViewCell
        XCTAssertNotNil(cell, "table view cell should exist")
    }
    
    func testThatTableViewHasOneSection () {
        XCTAssertTrue(self.tableView?.numberOfSections()==1, "the table view should have 1 section")
    }
    
    func testThatTableViewHasTwoRows () {
        XCTAssertTrue(self.tableView?.numberOfRowsInSection(0)==2, "the table should have 2 rows")
    }
    
}
