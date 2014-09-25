//
//  UIView+Inspectables.h
//  IBDesignables
//
//  Created by Jack Cox on 9/25/14.
//  Copyright (c) 2014 CapTech Consulting. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (Inspectables)

@property (nonatomic, assign) IBInspectable NSString *testingId;
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;

@end
