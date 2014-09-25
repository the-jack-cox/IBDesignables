//
//  StarView.swift
//  IBDesignables
//
//  Created by Jack Cox on 9/23/14.
//  Copyright (c) 2014 CapTech Consulting. All rights reserved.
//

import UIKit


@IBDesignable class StarView : UIView {
    
    @IBInspectable var starColor:UIColor
    
    required init(coder aDecoder: NSCoder) {
        starColor = UIColor.yellowColor();
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        starColor = UIColor.yellowColor();
        super.init(frame: frame)
    }
    
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        var context = UIGraphicsGetCurrentContext();
        
        CGContextSetFillColorWithColor(context,starColor.CGColor);
        
        let theta:Double = 2.0 * M_PI * (2.0 / 5.0)
        
        let r = Double(self.bounds.size.width/2.0)
        
        let xCenter = self.bounds.size.width/2.0
        let yCenter = self.bounds.size.height/2.0
        
        CGContextMoveToPoint(context, xCenter, CGFloat(r + (Double(yCenter))))
        
        for (var k:Double=1; k<5; k++)
        {
            let x:CGFloat = CGFloat(r * sin(k * theta));
            let y:CGFloat = CGFloat(r * cos(k * theta));
            CGContextAddLineToPoint(context,
                x+xCenter,
                y+yCenter)
        }
        CGContextClosePath(context);
        CGContextFillPath(context);
    }
}
