//
//  JEKViewController.m
//  JEKEasing
//
//  Created by Jordan Kay on 1/25/14.
//  Copyright (c) 2014 Jordan Kay. All rights reserved.
//

#import "JEKEasingDemoViewController.h"
#import "UIView+JEKEasing.h"

#define ANIMATION_DURATION .75
#define ANIMATION_CURVE JEKAnimationCurveEaseInOutSine

typedef NS_ENUM(NSUInteger, JEKEasingDemoViewControllerAnimationDirection) {
    JEKEasingDemoViewControllerAnimationDirectionLeft,
    JEKEasingDemoViewControllerAnimationDirectionRight,
};

@implementation JEKEasingDemoViewController
{
    CGFloat _animationDistance;
    JEKEasingDemoViewControllerAnimationDirection _animationDirection;
    BOOL _repeating;
}

- (IBAction)animate:(id)sender
{
    CGFloat distance = (_animationDirection == JEKEasingDemoViewControllerAnimationDirectionRight) ? _animationDistance : -_animationDistance;
    [UIView jek_animateWithDuration:ANIMATION_DURATION curve:ANIMATION_CURVE delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.squareView.frame = CGRectOffset(self.squareView.frame, distance, 0.0f);
    } completion:^(BOOL finished) {
        if (finished) {
            _animationDirection = (_animationDirection == JEKEasingDemoViewControllerAnimationDirectionRight) ? JEKEasingDemoViewControllerAnimationDirectionLeft : JEKEasingDemoViewControllerAnimationDirectionRight;
            if (_repeating) {
                [self animate:sender];
            } else {
                self.animateButton.enabled = YES;
            }
        }
    }];

    self.animateButton.enabled = NO;
}

- (IBAction)toggleRepeating:(UIButton *)sender
{
    _repeating = !_repeating;

    NSString *title = (_repeating) ? @"Repeating" : @"Single";
    [sender setTitle:title forState:UIControlStateNormal];
}

#pragma mark - NSObject

- (instancetype)initWithCoder:(NSCoder *)coder
{
    if (self = [super initWithCoder:coder]) {
        _animationDirection = JEKEasingDemoViewControllerAnimationDirectionRight;
    }
    return self;
}

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    _animationDistance = self.view.bounds.size.height - self.squareView.bounds.size.width - self.squareView.frame.origin.x * 2;
}

@end
