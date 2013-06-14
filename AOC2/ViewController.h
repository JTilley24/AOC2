//Justin Tilley
//AOC2 Project 2
//
//  ViewController.h
//  AOC2
//
//  Created by Justin Tilley on 6/12/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarFactory.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *chevyButton;
    IBOutlet UIButton *fordButton;
    IBOutlet UIButton *dodgeButton;
    IBOutlet UITextField *textOutput;
    IBOutlet UISegmentedControl *backgroundSegment;
    IBOutlet UIStepper *stepper;
    NSString *textResults;
    int multiplier;
    int baseHorsepower;
    NSString *carMake;
}

-(IBAction)onOpen:(id)sender;
-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;
-(IBAction)onStep:(id)sender;

@end
