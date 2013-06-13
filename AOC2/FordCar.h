//
//  FordCar.h
//  AOC2
//
//  Created by Justin Tilley on 6/13/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "baseCar.h"

@interface FordCar : BaseCar
{
    int transGear;
}
typedef enum{
    AUTO=4,
    MANUAL
}transGear;

//Data members for Gear Ratio and Transmission for Top Speed
@property int gearRatio;
@property int transType;
@property int topSpeed;

@end
