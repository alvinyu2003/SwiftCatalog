//
//  LocalizableViewController.swift
//  UICatalog
//
//  Created by Alvin Yu on 4/1/15.
//  Copyright (c) 2015 Alvin Yu. All rights reserved.
//

import UIKit

class LocalizableViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.convertOneHundredThousandToDecimal()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func convertOneHundredThousandToDecimal() {
        var numberFormatter = NSNumberFormatter()
        numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        var numberString = numberFormatter.stringFromNumber(100000)
        self.label.text = numberString
    }

}
