//
//  ViewController.swift
//  BasicInteraction
//
//  Created by Edward Chiang on 11/3/15.
//  Copyright © 2015 Soleil Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var simpleLabel: UILabel!
    
    @IBOutlet weak var simpleTextField: UITextField!
    
    @IBAction func changeLabel(sender: AnyObject) {
        simpleLabel.text = "Hello, " + simpleTextField.text! + "!"
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

