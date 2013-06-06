//
//  chevyCar.m
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "chevyCar.h"

@implementation chevyCar

@synthesize exhaustPipes, exhaustDiameter;

-(id)init
{
    self = [super init];
    if(self != nil)
    {
        [self setHorsePower:0];
        [self setExhaustPipes:DUAL];
        [self setExhaustDiameter:3];
    }
    return self;
};

-(void)horsePowerRating
{
    [self setHorsePower:((exhaustPipes * exhaustDiameter) * 50)];
    if(exhaustPipes == SINGLE)
    {
        NSLog(@"The single exhaust is quiet.");
    }else if(exhaustPipes == DUAL)
    {
        NSLog(@"The dual exhaust is loud.");
    }else{
        NSLog(@"Not a valid exhaust.");
    }
}

@end
