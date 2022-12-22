//
//  OTPVerifyConfig.swift
//
//  Created by Krishna on 24/04/17.
//  Copyright © 2017 Konstant. All rights reserved.
//

import Foundation
import UIKit

public struct PinConfig {
    public var otpLength: OTPLength?
    public var dotColor: UIColor?
    public var lineColor: UIColor?
    public var viewMain: UIView?
    public var spacing: CGFloat?
    public var isSecureTextEntry: Bool?
    public var placeHolderText: String?
    public var placeHolderAttributedText: NSAttributedString?
    public var showPlaceHolder: Bool?
    init(numberOfFields:OTPLength = .four, dotColor:UIColor = UIColor.black, lineColor:UIColor = .clear, viewMain:UIView = UIView(), spacing:CGFloat = 8.0, secureTextEntry: Bool = true, placeHolderText: String = "*", showPlaceHolder: Bool = true) {
        self.otpLength     = numberOfFields
        self.dotColor           = dotColor
        self.lineColor          = lineColor
        self.viewMain           = viewMain
        self.spacing            = spacing
        self.isSecureTextEntry    = secureTextEntry
        self.placeHolderText    = placeHolderText
        self.showPlaceHolder    = showPlaceHolder
    }
}
