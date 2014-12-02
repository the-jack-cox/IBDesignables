//
//  InspectableView.swift
//  IBDesignables
//
//  Created by Jack Cox on 9/25/14.
//  Copyright (c) 2014 CapTech Consulting. All rights reserved.
//

import UIKit

enum StyleEnumeration: String {
    case StyleA = "Style A"
    case StyleB = "Style B"
    
}
@IBDesignable
class InspectableView: UIView {
    // items that do display in IB
    @IBInspectable var myColor:UIColor! = UIColor.redColor()
    @IBInspectable var myString:String = "A String"
    @IBInspectable var anInteger:Int32!
    @IBInspectable var floatingPointNumber:Double!
    @IBInspectable var isHappy:Bool = true
    @IBInspectable var anchorSpot:CGPoint!
    @IBInspectable var usableArea:CGRect = CGRect(x: 0, y: 0, width: 100, height: 100)
    @IBInspectable var aSize:CGSize!
    @IBInspectable var nsString:NSString = "NSString"
    @IBInspectable var badlynamedvariable:String!
    
    @IBInspectable var cornerRadius:CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    
    // items that don't display in IB
    @IBInspectable var style:StyleEnumeration = .StyleA
    @IBInspectable var superConstraint:NSLayoutConstraint!
    @IBInspectable var listValues:[String]!
    @IBInspectable var fancyBorder:UIEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    @IBInspectable var victorVector:CGVector!
    @IBInspectable var customTransform:CGAffineTransform! = CGAffineTransformIdentity
    @IBInspectable var date:NSDate!
}
