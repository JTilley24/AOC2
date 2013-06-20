//
//  SecondViewController.h
//  AOC2
//
//  Created by Justin Tilley on 6/19/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    IBOutlet UIButton * saveButton;
    IBOutlet UIButton *closeButton;
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *eventDate;
    
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;

@end
