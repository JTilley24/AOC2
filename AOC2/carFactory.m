//Justin Tilley
//AOC2 Project 1
//
//  carFactory.m
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "carFactory.h"

@implementation carFactory

+(baseCar *)createNewCar: (int)carType
{
    if(carType == CHEVY)
    {
        return [[chevyCar alloc] init];
    }else if(carType == FORD)
    {
        return [[fordCar alloc] init];
    }else if(carType == DODGE)
    {
        return [[dodgeCar alloc] init];
    }
    else return nil;
}

@end
