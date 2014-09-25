//
//  StarEllipseView.swift
//  IBDesignables
//
//  Created by Jack Cox on 9/23/14.
//  Copyright (c) 2014 CapTech Consulting. All rights reserved.
//

import UIKit

@IBDesignable
class StarEllipseView: EllipseView {
    
    var starView:StarView!
    
    func buildHiearchy() {
        starView = StarView(frame: CGRectInset(self.bounds, 5, 5))
        starView.setTranslatesAutoresizingMaskIntoConstraints(false)
        starView.backgroundColor = UIColor.clearColor()
        self.addSubview(starView)
        
        self.addConstraints([
            NSLayoutConstraint(item: starView, attribute: .CenterX,
                relatedBy: .Equal, toItem: self, attribute: .CenterX,
                multiplier: 1, constant: 0),
            NSLayoutConstraint(item: starView, attribute: .CenterY,
                relatedBy: .Equal, toItem: self, attribute: .CenterY,
                multiplier: 1, constant: 0),
            NSLayoutConstraint(item: starView, attribute: .Width,
                relatedBy: .Equal, toItem: self, attribute: .Width,
                multiplier: 1, constant: -5),
            NSLayoutConstraint(item: starView, attribute: .Height,
                relatedBy: .Equal, toItem: self, attribute: .Height,
                multiplier: 1, constant:-5)
            ])
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        buildHiearchy()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        buildHiearchy()
    }
}
