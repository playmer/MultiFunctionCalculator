//
//  CalcViewController.h
//  MultiFunctionCalculator
//
//  Created by Joshua Fisher on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalcViewController : UIViewController

-(IBAction)Calculate;
@property(nonatomic,strong) IBOutlet UITextField *firstnum;
@property(nonatomic,strong) IBOutlet UITextField *secondnum;
@property(nonatomic,retain) IBOutlet UISegmentedControl *decide;
@property(nonatomic,strong) IBOutlet UILabel *finalResult;

-(IBAction)Resign;

@end
