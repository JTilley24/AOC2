//Justin Tilley
//AOC2 Project 4
//  ViewController.h
//  AOC2
//
//  Created by Justin Tilley on 6/19/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController
{
    IBOutlet UITextView *eventList;
    IBOutlet UILabel *eventLabel;
    UISwipeGestureRecognizer *rightSwipe;
}

-(IBAction)onOpen:(id)sender;

@end
