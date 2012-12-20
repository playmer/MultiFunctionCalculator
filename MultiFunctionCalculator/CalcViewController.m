//
//  CalcViewController.m
//  MultiFunctionCalculator
//
//  Created by Joshua Fisher on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalcViewController.h"

@interface CalcViewController ()

@end

@implementation CalcViewController

@synthesize firstnum;
@synthesize secondnum;
@synthesize decide;
@synthesize finalResult;

-(IBAction) Resign
{
    //Resigns the responders by way of background button press.
    [firstnum resignFirstResponder];
    [secondnum resignFirstResponder];
}

-(IBAction) Calculate
{
    //Resigns the responders by way of the calculate button.
    [firstnum resignFirstResponder];
    [secondnum resignFirstResponder];
    
    //Switch determines which calculation as defined by the segmented control.
    switch (decide.selectedSegmentIndex)
    {
            //case 0, 1, and 2 are simple arithmetic operations using the intValue of our text fields. case 3 is similar but slightly more complicated.
        case 0: finalResult.text = [NSString stringWithFormat:@"The sum of %@ and %@ is %i.",firstnum.text, secondnum.text,[firstnum.text intValue]+[secondnum.text intValue]];
                break;
        case 1: finalResult.text = [NSString stringWithFormat:@"The difference of %@ and %@ is %i.",firstnum.text, secondnum.text,[firstnum.text intValue]-[secondnum.text intValue]];
                break;
        case 2: finalResult.text = [NSString stringWithFormat:@"The product of %@ and %@ is %i.",firstnum.text, secondnum.text,[firstnum.text intValue]*[secondnum.text intValue]];
                break;
            //This one is slightly different. In addtion to using the normal arithmetic operations, it also uses the modulo operation so as to output the remainder from the interger division done previously.
        case 3: finalResult.text = [NSString stringWithFormat:@"The qoutient of %@ and %@ is %i, with a remainder of %i.",firstnum.text,secondnum.text, [firstnum.text intValue]/[secondnum.text intValue], 
            [firstnum.text intValue]%[secondnum.text intValue]];
                break;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
