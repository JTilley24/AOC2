//
//  DodgeCar.h
//  AOC2
//
//  Created by Justin Tilley on 6/13/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "baseCar.h"

@interface DodgeCar : BaseCar

//Data members for Spark Plus and Edition of car for Torque rating
@property int sparkPlugs;
@property NSString *carEdition;
@property int torquePounds;

-(void)horsePowerRating;

@end
