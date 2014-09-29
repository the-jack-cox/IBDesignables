//
//  Elipse.m
//  IBDesignables
//
//  Created by Jack Cox on 9/23/14.
//  Copyright (c) 2014 CapTech Consulting. All rights reserved.
//

#import "EllipseView.h"

@implementation EllipseView

- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.fillColor = [UIColor blackColor];
    }
    return self;
}

- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.fillColor = [UIColor blackColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    
    // get the graphics context
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Set the fill color to the specified fill color
    CGContextSetFillColorWithColor(context, self.fillColor.CGColor);
    
    // fill an ellipse within the bounds of the view
    CGContextFillEllipseInRect(context, self.bounds);
    
}


@end
