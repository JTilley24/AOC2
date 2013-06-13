//
//  ChevyClass.m
//  AOC2
//
//  Created by Justin Tilley on 6/13/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "ChevyCar.h"

@implementation ChevyCar

@synthesize exhaustPipes, exhaustDiameter, exhaustSound;

-(id)init
{
    self = [super init];
    if(self != nil)
    {
        [self setHorsePower:0];
        [self setExhaustPipes:DUAL];
        [self setExhaustDiameter:4];
    }
    return self;
};

//Override of calculation
-(void)horsePowerRating
{
    [self setHorsePower:((exhaustPipes + exhaustDiameter) * 50)];
    if(exhaustPipes == SINGLE)
    {
        self.exhaustSound = [[NSString alloc] initWithFormat:@"The single exhaust of the car is quiet."];
    }else if(exhaustPipes == DUAL)
    {
        self.exhaustSound = [[NSString alloc] initWithFormat:@"The dual exhaust of the car is loud."];
    }else{
        self.exhaustSound = [[NSString alloc] initWithFormat:@"Not a valid exhaust."];
    }
}


@end
