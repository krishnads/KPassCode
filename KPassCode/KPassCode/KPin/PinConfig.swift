//
//  OTPVerifyConfig.swift
//
//  Created by Krishna on 24/04/17.
//  Copyright © 2017 Konstant. All rights reserved.
//

import Foundation
import UIKit

public struct PinConfig {
    public var numberOfFields: Int?
    public var dotColor: UIColor?
    public var lineColor: UIColor?
    public var viewMain: UIView?
    public var spacing: CGFloat?
    init(numberOfFields:Int = 4, dotColor:UIColor = UIColor.black, lineColor:UIColor = .clear, viewMain:UIView = UIView(), spacing:CGFloat = 8.0) {
        self.numberOfFields     = numberOfFields
        self.dotColor           = dotColor
        self.lineColor          = lineColor
        self.viewMain           = viewMain
        self.spacing            = spacing
    }
}
