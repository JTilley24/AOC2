//
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
    NSDate *current = [[NSDate alloc] init];
    [eventDate setMinimumDate:current];
    eventDate.timeZone = [NSTimeZone localTimeZone];
    NSDate *pickerDate = eventDate.date;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    if(dateFormat != nil)
    {
        [dateFormat setDateStyle:NSDateFormatterMediumStyle];
        [dateFormat setTimeStyle:NSDateFormatterMediumStyle];
    }
    NSString *dateText = [dateFormat stringFromDate:pickerDate];
    newDate = [[NSString alloc] initWithFormat:@"%@", dateText];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        if(button.tag == 0)
        {
            if(delegate != nil)
                {
                    newEvent = [[NSString alloc] initWithFormat:@"New Event: %@ %@", eventText.text, newDate];
                    NSLog(@"%@",newEvent);
                    //[delegate DidClose:newEvent];
                }
            [self dismissViewControllerAnimated:TRUE completion:nil];
            
        }else if(button.tag == 1)
        {
            [eventText resignFirstResponder];
        }
    }
}

-(IBAction)onChange:(id)sender
{
    NSDate *pickerDate = eventDate.date;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    if(dateFormat != nil)
    {
        [dateFormat setDateStyle:NSDateFormatterMediumStyle];
        [dateFormat setTimeStyle:NSDateFormatterMediumStyle];
    }
    NSString *dateText = [dateFormat stringFromDate:pickerDate];
    newDate = [[NSString alloc] initWithFormat:@"%@", dateText];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.text = @"";
    return true;
}



@end
