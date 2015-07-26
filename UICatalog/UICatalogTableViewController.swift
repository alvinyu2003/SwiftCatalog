//
//  TableViewController.swift
//  UICatalog
//
//  Created by Alvin Yu on 3/29/15.
//  Copyright (c) 2015 Alvin Yu. All rights reserved.
//

import UIKit

class UICatalogTableViewController: UITableViewController {
    
    struct CatalogItem {
        var name: String
        var segueName: String
    }
    
    var items: [CatalogItem] = [
        CatalogItem(name: "Activity Indicator", segueName: "ActivityIndicatorSegue"),
        CatalogItem(name: "Alert Controller", segueName: "AlertControllerSegue"), 
        CatalogItem(name: "Networking View Controller", segueName: "NetworkingViewControllerSegue"),
        CatalogItem(name: "CollectionView", segueName: "CollectionViewSegue")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCell", forIndexPath: indexPath) as! UITableViewCell

        var item = items[indexPath.row]
        cell.textLabel?.text = item.name

        return cell
    }
    
    // MARK: - Navigation
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        var item = items[indexPath.row]
        self.performSegueWithIdentifier(item.segueName, sender: self)
     
        
    }

}
