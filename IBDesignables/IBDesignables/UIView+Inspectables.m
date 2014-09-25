//
//  UIView+Inspectables.m
//  IBDesignables
//
//  Created by Jack Cox on 9/25/14.
//  Copyright (c) 2014 CapTech Consulting. All rights reserved.
//

#import "UIView+Inspectables.h"

@implementation UIView (Inspectables)


- (void) setTestingId:(NSString *)testingId {
    self.accessibilityIdentifier = testingId;
}
- (NSString *)testingId {
    return self.accessibilityIdentifier;
}

- (void) setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}
- (UIColor *) borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void) setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}
- (CGFloat) borderWidth {
    return self.layer.borderWidth;
}

@end
