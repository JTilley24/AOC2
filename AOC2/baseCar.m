//Justin Tilley
//AOC2 Project 1
//
//  baseCar.m
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "baseCar.h"

@implementation baseCar

@synthesize carModel, engineSize, horsePower;

-(id)init
{
    self= [super init];
    if(self != nil)
    {
        [self setHorsePower:0];
        [self setEngineSize:0];
        [self setCarModel:nil];
    }
    return self;
}

//Calculation method for Horsepower Rating
-(void)horsePowerRating
{
    [self setHorsePower:(self.engineSize - ([self.carModel length] * 10))];
    NSLog(@"Horsepower = %d", horsePower);
}

@end
