//
//  UIView+JEKEasing.m
//  JEKEasing
//
//  Created by Jordan Kay on 1/25/14.
//  Copyright (c) 2014 Jordan Kay. All rights reserved.
//

#import "UIView+JEKEasing.h"

@implementation UIView (JEKEasing)

+ (void)jek_animateWithDuration:(NSTimeInterval)duration curve:(JEKAnimationCurve)curve animations:(void (^)(void))animations
{
    [self jek_animateWithDuration:duration curve:curve animations:animations completion:nil];
}

+ (void)jek_animateWithDuration:(NSTimeInterval)duration curve:(JEKAnimationCurve)curve animations:(void (^)(void))animations completion:(void (^)(BOOL))completion
{
    [self jek_animateWithDuration:duration curve:curve delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:animations completion:completion];
}

+ (void)jek_animateWithDuration:(NSTimeInterval)duration curve:(JEKAnimationCurve)curve delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL))completion
{
    [CATransaction begin];
    [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction jek_functionWithAnimationCurve:curve]];
    [self animateWithDuration:duration delay:delay options:options animations:animations completion:completion];
    [CATransaction commit];
}

@end
