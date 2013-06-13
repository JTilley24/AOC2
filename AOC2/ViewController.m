//
//  ViewController.m
//  AOC2
//
//  Created by Justin Tilley on 6/12/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onOpen:(id)sender
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if(secondView != nil)
    {
        [self presentViewController:secondView animated:TRUE completion:nil];
    }

}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button.tag == 0)
    {
        textOutput.text = @"Chevy";
        chevyButton.enabled = false;
        fordButton.enabled = true;
        dodgeButton.enabled = true;
    }else if(button.tag == 1)
    {
        textOutput.text = @"Ford";
        fordButton.enabled = false;
        chevyButton.enabled = true;
        dodgeButton.enabled = true;
    }else if(button.tag == 2)
    {
        textOutput.text = @"Dodge";
        dodgeButton.enabled = false;
        chevyButton.enabled = true;
        fordButton.enabled = true;
    }else
    {
    
    }
}

-(IBAction)onChange:(id)sender
{
    backgroundSegment = (UISegmentedControl*)sender;
    if(backgroundSegment != nil)
    {
        int colorIndex = backgroundSegment.selectedSegmentIndex;
        if(colorIndex == 0)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }else if(colorIndex == 1)
        {
            self.view.backgroundColor = [UIColor orangeColor];
        }else if(colorIndex == 2)
        {
            self.view.backgroundColor = [UIColor redColor];
        }

             
    }
}

@end
