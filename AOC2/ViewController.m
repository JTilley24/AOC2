//
//  ViewController.m
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    chevyCar *camaroCar = (chevyCar*)[carFactory createNewCar:CHEVY];
    [camaroCar setExhaustPipes:1];
    
    if(camaroCar != nil)
    {
        [camaroCar setCarModel:@"Camaro"];
        [camaroCar horsePowerRating];
        NSLog(@"The Chevy %@ has %d horsepower.", camaroCar.carModel, camaroCar.horsePower);
    
    }
    
    fordCar *mustangCar = (fordCar*)[carFactory createNewCar:FORD];
    [mustangCar setTransType:5];
    
    if(mustangCar != nil)
    {
        [mustangCar setCarModel:@"Mustang"];
        [mustangCar horsePowerRating];
        NSLog(@"The Ford %@ has %d horsepower.", mustangCar.carModel, mustangCar.horsePower);
        NSLog(@"The top speed is %d mph.", mustangCar.topSpeed);
    }
    
    dodgeCar *chargerCar = (dodgeCar*)[carFactory createNewCar:DODGE];
    [chargerCar setCarEdition:@"RT"];
    
    if(chargerCar != nil)
    {
        [chargerCar setCarModel:@"Charger"];
        [chargerCar horsePowerRating];
        NSLog(@"The Dodge %@ has %d horsepower.", chargerCar.carModel, chargerCar.horsePower);
        NSLog(@"The Torque rating is %d ftlbs.", chargerCar.torquePounds);
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
