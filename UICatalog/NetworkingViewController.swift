//
//  NetworkingViewController.swift
//  UICatalog
//
//  Created by Alvin Yu on 4/2/15.
//  Copyright (c) 2015 Alvin Yu. All rights reserved.
//

import UIKit

class NetworkingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.makeRequest()
    }
    
    func makeRequest() {
        let url = NSURL(string: "http://www.google.com")
        let request = NSURLRequest(URL: url!)
        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: configuration)
        
        let task = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
            let dataResponse = NSString(data: data, encoding: NSUTF8StringEncoding)
            println("data: \(dataResponse)")
            println("received response: \(response)")
            println("error: \(error)")
        })
        
        task.resume()
    }
}

