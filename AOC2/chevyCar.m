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
        [self setHorsePower:245];
        [self setExhaustPipes:2];
        [self setExhaustDiameter:3];
    }
    return self;
};

-(void)horsePowerRating
{
    [self setHorsePower:((exhaustPipes * exhaustDiameter) * 50)];
    NSLog(@"The horsepower is %d", self.horsePower);
    
    
}

@end
