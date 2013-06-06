//
//  chevyCar.h
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "baseCar.h"

@interface chevyCar : baseCar
{
    int exhaustType;
}

typedef enum {
    SINGLE = 1,
    DUAL
}exhuastType;

@property int exhaustPipes;
@property int exhaustDiameter;


-(void)horsePowerRating;

@end
