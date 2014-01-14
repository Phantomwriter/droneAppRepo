//
//  transportDrone.m
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "transportDrone.h"


@implementation transportDrone

@synthesize extraRotors,distancePerRotor, totalRotorDist;

-(id)init
{

    self = [super init];
    if (self != nil)     
{
    [self setExtraRotors:EIGHT_ROTORS];
    [self setDistancePerRotor:0];
    [self setTotalRotorDist:0];

}
    return self;

};

-(void)totalDistanceInMiles;
{
 
    if(extraRotors == TWO_ROTORS)
        
    {
    
        [self setDistancePerRotor:5];
        [self setExtraRotors:2];

        [self setTotalRotorDist:(distancePerRotor* extraRotors)];
    
    }
    
    else if(extraRotors == FOUR_ROTORS)
        
    {
    
        [self setDistancePerRotor:10];
        [self setExtraRotors:4];

        [self setTotalRotorDist:(distancePerRotor* extraRotors)];

    }
    
    else if(extraRotors == SIX_ROTORS)
        
    {
        
        [self setDistancePerRotor:15];
        [self setExtraRotors:6];

        [self setTotalRotorDist:(distancePerRotor* extraRotors)];

    }
    else if(extraRotors == EIGHT_ROTORS)
        
    {
        
        [self setDistancePerRotor:20];
        [self setExtraRotors:8];
        [self setTotalRotorDist:(distancePerRotor* extraRotors)];

    }
    else
    {
    
        NSLog(@"Please select up to eight extra rotors for your drone");
    
    }
//Find the distance this transport drone can travel because of the extra rotors
    [self setDistPerRotor:(self.distancePerRotor * extraRotors)];
    NSLog(@"This drone can have %i extra rotors and can travel %i extra miles per rotor for a total distance of %i miles with this drone" , self.extraRotors, distancePerRotor, totalRotorDist);

    
}


@end
