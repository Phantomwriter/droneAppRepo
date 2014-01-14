//
//  baseDrone.m
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "baseDrone.h"

@implementation baseDrone

@synthesize

//All drones have at least 3 of these attributes, override will narrow down the base speccifications

                droneName,
                droneRequirements,
                numOfRotors,
                distPerRotor;

-(id)init
{

    self = [super init];
    if (self != nil)
    {
        [self setDroneName:nil];
        [self setDroneRequirements:nil];
        [self setNumOfRotors:4];
        [self setDistPerRotor:15];

        
    }
    
    return self;

}

//calculation method to override

-(void)totalDistanceInMiles;
{

        NSLog(@"This drone has %i rotors, and can fly a total of %i miles per rotor for a total distance of.",numOfRotors,distPerRotor);
}


@end
