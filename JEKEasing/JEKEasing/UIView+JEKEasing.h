//
//  UIView+JEKEasing.h
//  JEKEasing
//
//  Created by Jordan Kay on 1/25/14.
//  Copyright (c) 2014 Jordan Kay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CAMediaTimingFunction+JEKEasing.h"

@interface UIView (JEKEasing)

+ (void)jek_animateWithDuration:(NSTimeInterval)duration curve:(JEKAnimationCurve)curve animations:(void (^)(void))animations;
+ (void)jek_animateWithDuration:(NSTimeInterval)duration curve:(JEKAnimationCurve)curve animations:(void (^)(void))animations completion:(void (^)(BOOL))completion;
+ (void)jek_animateWithDuration:(NSTimeInterval)duration curve:(JEKAnimationCurve)curve delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL))completion;

@end
