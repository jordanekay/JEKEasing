//
//  CAMediaTimingFunction+JEKEasing.h
//  JEKEasing
//
//  Created by Jordan Kay on 1/25/14.
//  Copyright (c) 2014 Jordan Kay. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

typedef NS_ENUM(NSUInteger, JEKAnimationCurve) {
    JEKAnimationCurveEaseInSine,
    JEKAnimationCurveEaseOutSine,
    JEKAnimationCurveEaseInOutSine,
    JEKAnimationCurveEaseInQuadratic,
    JEKAnimationCurveEaseOutQuadratic,
    JEKAnimationCurveEaseInOutQuadratic,
    JEKAnimationCurveEaseInCubic,
    JEKAnimationCurveEaseOutCubic,
    JEKAnimationCurveEaseInOutCubic,
    JEKAnimationCurveEaseInQuartic,
    JEKAnimationCurveEaseOutQuartic,
    JEKAnimationCurveEaseInOutQuartic,
    JEKAnimationCurveEaseInQuintic,
    JEKAnimationCurveEaseOutQuintic,
    JEKAnimationCurveEaseInOutQuintic,
    JEKAnimationCurveEaseInExponential,
    JEKAnimationCurveEaseOutExponential,
    JEKAnimationCurveEaseInOutExponential,
    JEKAnimationCurveEaseInCircular,
    JEKAnimationCurveEaseOutCircular,
    JEKAnimationCurveEaseInOutCircular,
    JEKAnimationCurveEaseInBack,
    JEKAnimationCurveEaseOutBack,
    JEKAnimationCurveEaseInOutBack,
};

@interface CAMediaTimingFunction (JEKEasing)

+ (instancetype)jek_functionWithAnimationCurve:(JEKAnimationCurve)animationCurve;

@end
