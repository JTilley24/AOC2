//
//  fordCar.h
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "baseCar.h"

@interface fordCar : baseCar
{
    int transGear;
}
typedef enum{
    AUTO=4,
    MANUAL
}transGear;

@property int gearRatio;
@property int transType;
@property int topSpeed;

@end
