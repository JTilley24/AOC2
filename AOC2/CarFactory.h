//
//  CarFactory.h
//  AOC2
//
//  Created by Justin Tilley on 6/13/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCar.h"
#import "ChevyCar.h"
#import "FordCar.h"
#import "DodgeCar.h"

@interface CarFactory : NSObject

+(BaseCar *)createNewCar: (int)carType;

@end
