//
//  ChevyClass.h
//  AOC2
//
//  Created by Justin Tilley on 6/13/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "baseCar.h"
#import "ViewController.h"

@interface ChevyCar : BaseCar
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
@property(nonatomic, strong) NSString *exhaustSound;


-(void)horsePowerRating;

@end
