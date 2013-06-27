//Justin Tilley
//AOC2 Project 4
//  SecondViewController.h
//  AOC2
//
//  Created by Justin Tilley on 6/19/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecondViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UIButton *closeButton;
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *eventDate;
    IBOutlet UILabel *saveLabel;
    UISwipeGestureRecognizer *leftSwipe;
    NSString *dateText;
    NSString *newDate;
    NSString *newEvent;
    NSDateFormatter *dateFormat;
}

@property (nonatomic,strong) NSString *eventString;

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;

+(SecondViewController *)sharedEvent;
-(id)init;


@end
