//Justin Tilley
//AOC2 Project 1
//
//  chevyCar.h
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "baseCar.h"
#import "ViewController.h"

@interface chevyCar : baseCar
{
    NSString *chevyResult2;
    int exhaustType;
}

typedef enum {
    SINGLE = 1,
    DUAL
}exhuastType;

//Data members for number of Exhaust pipes, Diameter of pipes, and Sound
@property int exhaustPipes;
@property int exhaustDiameter;
@property NSString *exhaustSound;


-(void)horsePowerRating;

@end
