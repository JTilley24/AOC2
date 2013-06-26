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
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Open Second View
-(IBAction)onOpen:(id)sender
{
    //Check for inital Add Event
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

//Add Event content from Second View to Event List on First View
-(void)DidClose:(NSString*)eventString
{
    if ([eventList.text isEqual: @""]) {
        eventList.text = eventString;
    }else{
        NSString *addEvent = [[NSString alloc] initWithFormat:@"%@ \n\n%@", eventList.text, eventString];
        eventList.text = addEvent;
    }
    
}

@end
