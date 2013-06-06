//Justin Tilley
//AOC2 Project 1
//
//  baseCar.h
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseCar : NSObject
{
    int carEnum;
}
typedef enum {
    CHEVY,
    FORD,
    DODGE
} carEnum;

//Data members for Model, Engine Size, and Horsepower
@property NSString *carModel;
@property int engineSize;
@property int horsePower;

-(id)init;

-(void)horsePowerRating;

@end
