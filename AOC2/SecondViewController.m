//Justin Tilley
//AOC2 Project 4
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

@synthesize eventString;

static SecondViewController *instance = nil;


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
    //Left Swipe Gesture to Close and Save Second View
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [saveLabel addGestureRecognizer:leftSwipe];
    
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

+(SecondViewController *)sharedEvent
{
    if(instance == nil)
    {
        instance = [[self alloc] init];
    }
    return instance;
}
+(id)alloc
{
    instance = [super alloc];
    return instance;
}
-(id)init
{
    if(self = [super init])
    {
        
    }
    return self;
}

//Save and Close Second View
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(![eventText.text isEqualToString: @"Enter Event"] && ![eventText.text isEqualToString: @""])
    {
        newEvent = [[NSString alloc] initWithFormat:@"New Event: %@ \n%@", eventText.text, newDate];
        [self setEventString:newEvent];
        [self dismissViewControllerAnimated:TRUE completion:nil];
        
    }else{
        //Alert for required Text Field
        UIAlertView *eventAlert = [[UIAlertView alloc] initWithTitle:@"Event" message: @"Please Enter Event" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [eventAlert show];
    }

    

    
}

//On Click for Save and Close Keyboard Button
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        //Dismiss Keyboard
        [eventText resignFirstResponder];
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
    if([textField.text isEqualToString:@"Enter Event"])
    textField.text = @"";
    return true;
}





@end
