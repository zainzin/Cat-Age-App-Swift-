//
//  ViewController.swift
//  Cat Age
//
//  Created by Zain Hatim on 8/4/15.
//  Copyright (c) 2015 Arabster. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var labelToShow: UILabel!
    
    @IBOutlet var infoToGet: UITextField!
    @IBAction func butnResult(sender: AnyObject) {
        var message = infoToGet.text.toInt()
        if(infoToGet.text.isEmpty){
            labelToShow.text = "Enter an age please!"
        } else {
            message! *= 7
            labelToShow.text = "Your cat's age \(message!)"
            self.infoToGet.resignFirstResponder()
        }
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.infoToGet.resignFirstResponder()
        return false
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
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

