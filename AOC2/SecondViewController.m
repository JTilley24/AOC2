//Justin Tilley
//AOC2 Project 3
//  SecondViewController.m
//  AOC2
//
//  Created by Justin Tilley on 6/19/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //Format Date
    NSDate *current = [[NSDate alloc] init];
    [eventDate setMinimumDate:current];
    eventDate.timeZone = [NSTimeZone localTimeZone];
    NSDate *pickerDate = eventDate.date;
    dateFormat = [[NSDateFormatter alloc] init];
    if(dateFormat != nil)
    {
        [dateFormat setDateStyle:NSDateFormatterMediumStyle];
        [dateFormat setTimeStyle:NSDateFormatterMediumStyle];
    }
    dateText = [dateFormat stringFromDate:pickerDate];
    newDate = [[NSString alloc] initWithFormat:@"%@", dateText];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//On Click for Save and Close Keyboard Button
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        if(button.tag == 0)
        {
            //Check for Text Field 
            if(![eventText.text isEqualToString: @"Enter Event"] && ![eventText.text isEqualToString: @""])
            {
                if(delegate != nil)
                    {
                        //Add Event text and Date to Event List
                        newEvent = [[NSString alloc] initWithFormat:@"New Event: %@ \n%@", eventText.text, newDate];
                        [delegate DidClose:newEvent];
                    }
                [self dismissViewControllerAnimated:TRUE completion:nil];
            }else{
                //Alert for required Text Field
                UIAlertView *eventAlert = [[UIAlertView alloc] initWithTitle:@"Event" message: @"Please Enter Event" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                [eventAlert show];
            }
            
        }else if(button.tag == 1)
        {
            //Dismiss Keyboard
            [eventText resignFirstResponder];
        }
    }
}
//Date Picker change
-(IBAction)onChange:(id)sender
{
    NSDate *pickerDate = eventDate.date;
    dateText = [dateFormat stringFromDate:pickerDate];
    newDate = [[NSString alloc] initWithFormat:@"%@", dateText];
}
//Clear Text Field when editing
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = @"";
    return true;
}



@end
