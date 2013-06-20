//
//  SecondViewController.h
//  AOC2
//
//  Created by Justin Tilley on 6/19/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewDelegate <NSObject>

@required
-(void)DidClose:(NSString*)eventString;

@end

@interface SecondViewController : UIViewController <UITextFieldDelegate>
{
    id<SecondViewDelegate> delegate;
    IBOutlet UIButton * saveButton;
    IBOutlet UIButton *closeButton;
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *eventDate;
    NSString *dateText;
    NSString *newDate;
    NSString *newEvent;
    NSDateFormatter *dateFormat;
    
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;

@property (strong) id<SecondViewDelegate> delegate;

@end
