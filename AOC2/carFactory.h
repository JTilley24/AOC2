//
//  carFactory.h
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseCar.h"
#import "chevyCar.h"
#import "fordCar.h"
#import "dodgeCar.h"

@interface carFactory : NSObject

+(baseCar *)createNewCar: (int)carType;

@end
