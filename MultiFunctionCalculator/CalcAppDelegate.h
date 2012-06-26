//
//  CalcAppDelegate.h
//  MultiFunctionCalculator
//
//  Created by Joshua Fisher on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalcViewController;

@interface CalcAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CalcViewController *viewController;

@end
