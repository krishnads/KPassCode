//
//  OTPVerifyView.swift
//
//  Created by Krishna on 24/04/17.
//  Copyright © 2017 Konstant. All rights reserved.
//

import UIKit

class PinView: UIStackView, UITextFieldDelegate, OTPDelegate {
    
    lazy private var config:PinConfig! = PinConfig()
    var textFields = [UITextField]()
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    convenience init(config:PinConfig = PinConfig()) {
        self.init()
        self.config         = config
        self.spacing        = config.spacing!
        self.axis           = .horizontal
        self.distribution   = .fillEqually
        // setUpView()
    }
    
    public func setUpView() {
        
        for _ in 0..<config.numberOfFields! {
            let view = UIView()
            view.backgroundColor = .clear
            addArrangedSubview(view)
        }
        
        self.layoutIfNeeded()
        
        for i in  stride(from: 0, to: config.numberOfFields!, by:1) {
            let view = self.arrangedSubviews[i]
            let frameSize:CGSize = self.arrangedSubviews[i].frame.size
            let textField:PinTextField      = PinTextField()
            textField.delegateOTP           = self
            textField.tag                   = i+100
            textField.frame                 = CGRect(x: 0, y: 0, width: frameSize.width, height: frameSize.height - 1)
            textField.delegate              = self
            textField.isSecureTextEntry     = true
            textField.placeholder           = "*"
            textField.backgroundColor       = .white
            textField.textAlignment         = .center
            textField.borderStyle           = .none
            textField.keyboardType          = .numberPad
            textField.textColor             = config.dotColor
            textField.font                  = UIFont.boldSystemFont(ofSize: 25.0)
            textField.tintColor             = .clear
            view.addSubview(textField)
            let viewLine                = UIView()
            viewLine.backgroundColor    = config.lineColor
            viewLine.frame              = CGRect(x: 0, y: frameSize.height - 1, width: frameSize.width, height: 1)
            view.addSubview(viewLine)
            self.textFields.append(textField)
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.characters.count == 0 {
            if textField.text?.characters.count == 0 {
                if let previousTextField = self.viewWithTag(textField.tag-1) {
                    previousTextField.becomeFirstResponder()
                }
            }
        } else {
            if let currentTextField = self.viewWithTag(textField.tag+1) {
                currentTextField.becomeFirstResponder()
            } else {
                //self.endEditing(true)
            }
        }
        textField.text = string
        return false
    }
    
    func OTPTextFieldDidPressBackspace(textfield: PinTextField) {
        if let previousTextField: PinTextField = self.viewWithTag(textfield.tag-1) as? PinTextField {
            previousTextField.text = ""
            previousTextField.becomeFirstResponder()
        }
    }
}
