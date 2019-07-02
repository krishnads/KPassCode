//
//  ViewController.swift
//  KPassCode
//
//  Created by Apple on 02/07/19.
//  Copyright © 2019 Konstant info Solutions Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewOTP: PinView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var config:PinConfig! = PinConfig()
        config.numberOfFields     = 6
        config.dotColor           = .red
        config.lineColor          = .green
        config.spacing            = 30
        
        viewOTP.config = config
        viewOTP.setUpView()
        viewOTP.textFields[0].becomeFirstResponder()
    }


    @IBAction func submitButtonAction(_ sender: Any) {
        var otpCode:String = ""
        for textField in viewOTP.textFields {
            if textField.text == "" {
                print("enter 4 digit code")
                return
            }
            otpCode += textField.text!
        }
        print(otpCode)
    }
}

