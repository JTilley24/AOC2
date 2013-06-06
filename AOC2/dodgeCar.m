//
//  dodgeCar.m
//  AOC2
//
//  Created by Justin Tilley on 6/5/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "dodgeCar.h"

@implementation dodgeCar

@synthesize sparkPlugs, carEdition, torquePounds;

-(id)init
{
    self = [super init];
    if(self != nil)
    {
        [self setHorsePower:0];
        [self setSparkPlugs:16];
        [self setCarEdition:@""];
    }
    return self;
}

-(void)horsePowerRating
{
        if([carEdition length] == 2)
        {
            [self setHorsePower:280];
            [self setTorquePounds:(30 / 2) * sparkPlugs];
        }else if([carEdition length] == 3){
            [self setHorsePower:230];
            [self setTorquePounds:(30 / 3) * sparkPlugs];
        }else{
            NSLog(@"Not a valid car edition.");
        }
        
}

@end
