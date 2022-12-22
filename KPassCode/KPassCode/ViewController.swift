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
        
        var config:PinConfig!     = PinConfig()
        config.otpLength          = .four
        config.dotColor           = .black
        config.lineColor          = #colorLiteral(red: 0.8265652657, green: 0.8502194881, blue: 0.9000532627, alpha: 1)
        config.spacing            = 20
        config.isSecureTextEntry  = false
        config.showPlaceHolder    = true
        config.placeHolderAttributedText = NSAttributedString(string: "-", attributes: [NSAttributedString.Key.foregroundColor:UIColor.black, NSAttributedString.Key.font: UIFont(name: "Avenir-Light", size: 24.0)!])
        
        
        config.lineColor = .clear
        
        viewOTP.config = config
        viewOTP.setUpView()
        viewOTP.textFields[0].becomeFirstResponder()
    }


    @IBAction func submitButtonAction(_ sender: Any) {
        var otpCode:String = ""
        do {
            otpCode = try self.viewOTP.getOTP()
        } catch OTPError.inCompleteOTPEntry {
            print("Incomplete OTP Entry error")
        } catch let error {
            print(error.localizedDescription)
        }
        print(otpCode)
    }
}

