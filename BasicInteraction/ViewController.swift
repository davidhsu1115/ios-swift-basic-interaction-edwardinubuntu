//
//  ViewController.swift
//  BasicInteraction
//
//  Created by Edward Chiang on 11/3/15.
//  Copyright © 2015 Soleil Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var simpleLabel: UILabel!
    
    @IBOutlet weak var simpleTextField: UITextField!
    
    @IBAction func changeLabel(sender: AnyObject) {
        simpleLabel.text = "Hello, " + simpleTextField.text! + "!"
        
        // Make keyboard go away
        // Fist way to close
        self.simpleTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        // Build in method, we can chose to use it to implement to lifecycle.
        
        // Now we could go ahead and call all of them one by one, but this is a way of telling all the controls contained on the screen that they are no longer in edit mode and they will give up first responder status.
        
        // Second way to close
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

