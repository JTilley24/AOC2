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
    multiplier = 1;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Open Second View
-(IBAction)onOpen:(id)sender
{
    
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if(secondView != nil)
    {
        [self presentViewController:secondView animated:TRUE completion:nil];
    }

}

//Click action for Buttons
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button.tag == 0)
    {
        //Chevy Class
        ChevyCar *camaroCar = (ChevyCar*)[CarFactory createNewCar:CHEVY];
        [camaroCar setExhaustPipes:2];
        
        if(camaroCar != nil)
        {
            [camaroCar setEngineSize:350];
            [camaroCar setCarModel:@"Camaro"];
            [camaroCar horsePowerRating];
        }
        carMake = @"Chevy";
        baseHorsepower = camaroCar.horsePower;
        textResults = [[NSString alloc] initWithFormat:@"%d %@ cars", multiplier, carMake];
        textOutput.text = textResults;
        chevyButton.enabled = false;
        fordButton.enabled = true;
        dodgeButton.enabled = true;
        
        
    }else if(button.tag == 1)
    {
        //Ford Class
        FordCar *mustangCar = (FordCar*)[CarFactory createNewCar:FORD];
        [mustangCar setTransType:5];
        
        if(mustangCar != nil)
        {
            [mustangCar setEngineSize:302];
            [mustangCar setCarModel:@"Mustang"];
            [mustangCar horsePowerRating];
        }
        carMake = @"Ford";
        baseHorsepower = mustangCar.horsePower;
        textResults = [[NSString alloc] initWithFormat:@"%d %@ cars", multiplier, carMake];
        textOutput.text = textResults;
        fordButton.enabled = false;
        chevyButton.enabled = true;
        dodgeButton.enabled = true;
    }else if(button.tag == 2)
    {
        //Dodge Class
        DodgeCar *chargerCar = (DodgeCar*)[CarFactory createNewCar:DODGE];
        [chargerCar setCarEdition:@"RT"];
        
        if(chargerCar != nil)
        {
            [chargerCar setEngineSize:360];
            [chargerCar setCarModel:@"Charger"];
            [chargerCar horsePowerRating];
        }
        carMake = @"Dodge";
        baseHorsepower = chargerCar.horsePower;
        textResults = [[NSString alloc] initWithFormat:@"%d %@ cars", multiplier, carMake];
        textOutput.text = textResults;
        dodgeButton.enabled = false;
        chevyButton.enabled = true;
        fordButton.enabled = true;
    }else if(button.tag == 3)
    {
        //Calculation Button method and output
        int calcResults = baseHorsepower * multiplier;
        textResults = [[NSString alloc] initWithFormat:@"%d %@ cars have %d hp.", multiplier, carMake, calcResults];
        textOutput.text = textResults;
    }
}

//Background Color segment control
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

//Stepper action and output
-(IBAction)onStep:(id)sender
{
    stepper = (UIStepper*)sender;
    if(stepper != nil)
    {
        multiplier = stepper.value;
        textResults = [[NSString alloc] initWithFormat:@"%d %@ cars", multiplier, carMake];
        textOutput.text = textResults;
    }

}

@end
