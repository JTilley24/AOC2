//Justin Tilley
//AOC2 Project 1
//
//  dodgeCar.h
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "baseCar.h"

@interface dodgeCar : baseCar

//Data members for Spark Plus and Edition of car for Torque rating
@property int sparkPlugs;
@property NSString *carEdition;
@property int torquePounds;

-(void)horsePowerRating;

@end
