//Justin Tilley
//AOC2 Project 4
//  ViewController.m
//  AOC2
//
//  Created by Justin Tilley on 6/19/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [eventLabel addGestureRecognizer:rightSwipe];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(defaults != nil)
    {
        eventDefault = [defaults objectForKey:@"event"];
        if(eventDefault != nil)
        {
            eventList.text = eventDefault;
        }
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        if([eventList.text isEqualToString:@"Events will appear here."])
        {
            eventList.text = @"";
            SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
            if(secondView != nil)
            {
                [self presentViewController:secondView animated:TRUE completion:nil];
            }
        }else{
            SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
            if(secondView != nil)
            {
                [self presentViewController:secondView animated:TRUE completion:nil];
            }
        }
    }
}

- (void)viewWillAppear:(BOOL)animated
{
        if([eventList.text isEqualToString:@""])
        {
            NSString *addEvent = [[NSString alloc] initWithFormat:@"%@",[SecondViewController sharedEvent].eventString];
            if([SecondViewController sharedEvent].eventString != nil)
            {
                eventList.text = addEvent;
            }
        }else
        {
            NSString *addEvent = [[NSString alloc] initWithFormat:@"%@ \n\n%@", eventList.text, [SecondViewController sharedEvent].eventString];
            if([SecondViewController sharedEvent].eventString != nil)
            {
                eventList.text = addEvent;
            }
        }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(defaults != nil)
     {
         NSString *eventString = eventList.text;
         [defaults setObject:eventString forKey:@"event"];
         [defaults synchronize];
         UIAlertView *saveAlert = [[UIAlertView alloc] initWithTitle:@"Save" message: @"Events have been Saved." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
         [saveAlert show];
     }
}


@end
