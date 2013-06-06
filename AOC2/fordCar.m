//
//  fordCar.m
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "fordCar.h"

@implementation fordCar

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
    NSLog(@"The top speed is %d", self.topSpeed);
}

@end
