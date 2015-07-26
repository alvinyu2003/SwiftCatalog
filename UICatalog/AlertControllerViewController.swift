//
//  AlertControlleViewController.swift
//  UICatalog
//
//  Created by Alvin Yu on 3/30/15.
//  Copyright (c) 2015 Alvin Yu. All rights reserved.
//

import UIKit

class AlertControllerViewController: UIViewController {

    @IBOutlet var alertButton: UIButton!
    @IBOutlet var actionSheetButton: UIButton!
    @IBOutlet var textFieldAlertButton: UIButton!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert() {
        let alertTitle = NSLocalizedString("Alert", comment:"")
        let alertMessage = NSLocalizedString("Alert Message", comment:"")
        let okButtonTitle = NSLocalizedString("OK", comment:"")
        let cancelButtonTitle = NSLocalizedString("Cancel", comment:"")
        let otherButtonTitle = NSLocalizedString("Other", comment:"")
        
        let alertController: UIAlertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .Alert)
        
        //create actions
        let okAction = UIAlertAction(title: okButtonTitle, style: .Default, handler: { action in
            println("ok")
        })
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .Cancel, handler: { action in
            println("cancel")
        });
        let otherActionHandler = { (action: UIAlertAction!) -> Void in println("other") }
        let otherAction = UIAlertAction(title: otherButtonTitle, style: .Default, handler: otherActionHandler)
        
        //add actions
        alertController.addAction(okAction)
        alertController.addAction(otherAction)
        alertController.addAction(cancelAction)

        presentViewController(alertController, animated: true, completion: nil)
    }

    @IBAction func showActionSheet() {
        let actionSheetAlertController: UIAlertController = UIAlertController(title: "Action Sheet", message: "Action Sheet Message", preferredStyle: .ActionSheet)
        
        //create actions
        let firstAction = UIAlertAction(title: "first action", style: .Default, handler: nil)
        let secondAction = UIAlertAction(title: "second action", style: .Default, handler: nil)
        let cancelAction = UIAlertAction(title: "cancel", style: .Cancel, handler: nil)
        
        //add actions
        actionSheetAlertController.addAction(firstAction);
        actionSheetAlertController.addAction(secondAction)
        actionSheetAlertController.addAction(cancelAction)
        
        presentViewController(actionSheetAlertController, animated: true, completion: nil)
    }
    
    @IBAction func showTextFieldAlert () {
        let textFieldAlertController = UIAlertController(title: "Alert with TextField", message: "Enter text in the textfield", preferredStyle: .Alert)
        
        var inputTextField: UITextField?
        
        textFieldAlertController.addTextFieldWithConfigurationHandler {textField in
            textField.secureTextEntry = true
            inputTextField = textField
        }
        
        //create actions
        let okAction = UIAlertAction(title: "OK", style: .Default, handler: { action in NSLog(inputTextField!.text)
            self.label.text = "You entered \(inputTextField!.text)"
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        
        //add actions
        textFieldAlertController.addAction(cancelAction)
        textFieldAlertController.addAction(okAction)
        
        presentViewController(textFieldAlertController, animated: true, completion: nil)
    }
}
