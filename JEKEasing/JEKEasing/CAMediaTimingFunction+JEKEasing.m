//
//  CAMediaTimingFunction+JEKEasing.m
//  JEKEasing
//
//  Created by Jordan Kay on 1/25/14.
//  Copyright (c) 2014 Jordan Kay. All rights reserved.
//

#import "CAMediaTimingFunction+JEKEasing.h"

/**
 * Cubic Bézier curve approximations for easing functions
 * http://www.easings.net
 */
NSArray *controlPointsForCurve(JEKAnimationCurve curve)
{
    static NSDictionary *controlPoints;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        controlPoints = @{
            @(JEKAnimationCurveEaseInSine): @[@0.47f, @0.0f, @0.745f, @0.715f],
            @(JEKAnimationCurveEaseOutSine): @[@0.39f, @0.575f, @0.565f, @1.0f],
            @(JEKAnimationCurveEaseInOutSine): @[@0.445f, @0.05f, @0.55f, @0.95f],
            @(JEKAnimationCurveEaseInQuadratic): @[@0.55f, @0.085f, @0.68f, @0.53f],
            @(JEKAnimationCurveEaseOutQuadratic): @[@0.25f, @0.46f, @0.45f, @0.94f],
            @(JEKAnimationCurveEaseInOutQuadratic): @[@0.455f, @0.03f, @0.515f, @0.955f],
            @(JEKAnimationCurveEaseInCubic): @[@0.55f, @0.055f, @0.675f, @0.19f],
            @(JEKAnimationCurveEaseOutCubic): @[@0.215f, @0.61f, @0.355f, @1.0f],
            @(JEKAnimationCurveEaseInOutCubic): @[@0.645f, @0.045f, @0.355f, @1.0f],
            @(JEKAnimationCurveEaseInQuartic): @[@0.895f, @0.03f, @0.685f, @0.22f],
            @(JEKAnimationCurveEaseOutQuartic): @[@0.165f, @0.84f, @0.44f, @1.0f],
            @(JEKAnimationCurveEaseInOutQuartic): @[@0.77f, @0.0f, @0.175f, @1.0f],
            @(JEKAnimationCurveEaseInQuintic): @[@0.755f, @0.05f, @0.855f, @0.06f],
            @(JEKAnimationCurveEaseOutQuintic): @[@0.23f, @1.0f, @0.32f, @1.0f],
            @(JEKAnimationCurveEaseInOutQuintic): @[@0.86f, @0.0f, @0.07f, @1.0f],
            @(JEKAnimationCurveEaseInExponential): @[@0.95f, @0.05f, @0.795f, @0.035f],
            @(JEKAnimationCurveEaseOutExponential): @[@0.19f, @1.0f, @0.22f, @1.0f],
            @(JEKAnimationCurveEaseInOutExponential): @[@1.0f, @0.0f, @0.0f, @1.0f],
            @(JEKAnimationCurveEaseInCircular): @[@0.6f, @0.04f, @0.98f, @0.335f],
            @(JEKAnimationCurveEaseOutCircular): @[@0.075f, @0.82f, @0.165f, @1.0f],
            @(JEKAnimationCurveEaseInOutCircular): @[@0.785f, @0.135f, @0.15f, @0.86f],
            @(JEKAnimationCurveEaseInBack): @[@0.6f, @(-0.28f), @0.735f, @0.045f],
            @(JEKAnimationCurveEaseOutBack): @[@0.175f, @0.885f, @0.32f, @1.275f],
            @(JEKAnimationCurveEaseInOutBack): @[@0.68f, @(-0.55f), @0.265f, @1.55f]
        };
    });
    return controlPoints[@(curve)];
}

@implementation CAMediaTimingFunction (JEKEasing)

+ (instancetype)jek_functionWithAnimationCurve:(JEKAnimationCurve)animationCurve
{
    NSArray *points = controlPointsForCurve(animationCurve);
    return [CAMediaTimingFunction functionWithControlPoints:[points[0] floatValue] :[points[1] floatValue] :[points[2] floatValue] :[points[3] floatValue]];
}

@end
