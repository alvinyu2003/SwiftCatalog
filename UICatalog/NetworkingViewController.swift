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
            if let unwrappedData = data {
                let dataResponse = NSString(data: unwrappedData, encoding: NSUTF8StringEncoding)
                print("data: \(dataResponse)")
            }
            print("received response: \(response)")
            print("error: \(error)")
        })
        
        task.resume()
    }
}

