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
        NSLog(@"You pressed CHEVY");
        chevyButton.enabled = false;
        fordButton.enabled = true;
        dodgeButton.enabled = true;
    }else if(button.tag == 1)
    {
        NSLog(@"You pressed FORD");
        fordButton.enabled = false;
        chevyButton.enabled = true;
        dodgeButton.enabled = true;
    }else if(button.tag == 2)
    {
        NSLog(@"You pressed DODGE");
        dodgeButton.enabled = false;
        chevyButton.enabled = true;
        fordButton.enabled = true;
    }else
    {
    
    }
}

@end
