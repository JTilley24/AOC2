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
    [camaroCar setExhaustPipes:2];
    
    if(camaroCar != nil)
    {
        [camaroCar setEngineSize:350];
        [camaroCar setCarModel:@"Camaro"];
        [camaroCar horsePowerRating];
       
        NSString *chevyResults1 = [[NSString alloc] initWithFormat:@"The Chevy %@ has a %d cu in engine with %d horsepower.", camaroCar.carModel, camaroCar.engineSize, camaroCar.horsePower];
        
        chevyLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
        chevyLabel1.numberOfLines = 2;
        chevyLabel1.text = chevyResults1;
        [self.view addSubview:chevyLabel1];
        
        chevyLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 55, 320, 50)];
        chevyLabel2.numberOfLines = 2;
        chevyLabel2.text = camaroCar.exhaustSound;
        [self.view addSubview:chevyLabel2];
     }
    
    fordCar *mustangCar = (fordCar*)[carFactory createNewCar:FORD];
    [mustangCar setTransType:5];
    
    if(mustangCar != nil)
    {
        [mustangCar setEngineSize:302];
        [mustangCar setCarModel:@"Mustang"];
        [mustangCar horsePowerRating];
        
        NSString *fordResults1 = [[NSString alloc] initWithFormat:@"The Ford %@ has a %d cu in enigne with %d horsepower.", mustangCar.carModel, mustangCar.engineSize, mustangCar.horsePower ];
        NSString *fordResults2 = [[NSString alloc] initWithFormat:@"The top speed of the car is %d mph.", mustangCar.topSpeed];
        
        fordLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 110, 320, 50)];
        fordLabel1.numberOfLines = 2;
        fordLabel1.text = fordResults1;
        [self.view addSubview:fordLabel1];
        
        fordLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 165, 320, 50)];
        fordLabel2.numberOfLines = 2;
        fordLabel2.text = fordResults2;
        [self.view addSubview:fordLabel2];
    }
    
    dodgeCar *chargerCar = (dodgeCar*)[carFactory createNewCar:DODGE];
    [chargerCar setCarEdition:@"RT"];
    
    if(chargerCar != nil)
    {
        [chargerCar setEngineSize:360];
        [chargerCar setCarModel:@"Charger"];
        [chargerCar horsePowerRating];
        NSString *dodgeResults1 = [[NSString alloc] initWithFormat:@"The Dodge %@ has a %d cu in engine with %d horsepower.", chargerCar.carModel, chargerCar.engineSize, chargerCar.horsePower];
        
        NSString *dodgeResults2 = [[NSString alloc] initWithFormat:@"The Torque rating of the engine is %d ftlbs.", chargerCar.torquePounds];
        
        dodgeLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 220, 320, 50)];
        dodgeLabel1.numberOfLines = 2;
        dodgeLabel1.text = dodgeResults1;
        [self.view addSubview:dodgeLabel1];
        
        
        dodgeLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 275, 320, 50)];
        dodgeLabel2.numberOfLines = 2;
        dodgeLabel2.text = dodgeResults2;
        [self.view addSubview:dodgeLabel2];
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
