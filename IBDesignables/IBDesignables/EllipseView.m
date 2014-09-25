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

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    CGContextSetFillColorWithColor(context, self.fillColor.CGColor);
    
    
    CGContextFillEllipseInRect(context, self.bounds);
    
}


@end
