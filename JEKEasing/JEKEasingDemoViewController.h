//
//  JEKViewController.h
//  JEKEasing
//
//  Created by Jordan Kay on 1/25/14.
//  Copyright (c) 2014 Jordan Kay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JEKEasingDemoViewController : UIViewController

- (IBAction)animate:(id)sender;
- (IBAction)toggleRepeating:(id)sender;

@property (nonatomic) IBOutlet UIView *squareView;
@property (nonatomic) IBOutlet UIButton *animateButton;

@end
