//
//  FordCar.m
//  AOC2
//
//  Created by Justin Tilley on 6/13/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "FordCar.h"

@implementation FordCar

@synthesize gearRatio, transType, topSpeed;

-(id)init
{
    self = [super init];
    if(self != nil)
    {
        [self setHorsePower:0];
        [self setTransType:AUTO];
        [self setGearRatio:397];
    }
    return self;
};

//Override of calculation
-(void)horsePowerRating
{
    if(transType == AUTO){
        [self setHorsePower:255];
        [self setTopSpeed:(gearRatio - self.horsePower)];
    }
    else if(transType == MANUAL){
        [self setHorsePower:285];
        [self setTopSpeed:(gearRatio - self.horsePower)];
    }
    else{
        NSLog(@"You have no transmission.");
    }
}

@end
