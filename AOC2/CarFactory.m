//
//  CarFactory.m
//  AOC2
//
//  Created by Justin Tilley on 6/13/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "CarFactory.h"

@implementation CarFactory

+(BaseCar *)createNewCar: (int)carType
{
    if(carType == CHEVY)
    {
        return [[ChevyCar alloc] init];
    }else if(carType == FORD)
    {
        return [[FordCar alloc] init];
    }else if(carType == DODGE)
    {
        return [[DodgeCar alloc] init];
    }
    else return nil;
    
}

@end
