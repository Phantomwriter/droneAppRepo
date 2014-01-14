//
//  fighterDrone.m
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "fighterDrone.h"
#import "baseDrone.h"






@implementation fighterDrone

@synthesize drainPerOption, adjustedAirTime, weapon, airTime;

-(id)init
{
    
    self = [super init];
    if (self != nil)
    {
        [self setAirTime:60];
        [self setDrainPerOption:0];
        [self setAdjustedAirTime:0];
        [self setWeapon:LASER];
        
    }
    return self;
    
};

//overwrite clcu;ation method

    -(void)totalDistanceInMiles;

    {
    
        NSLog(@"Each one of the weapons options drains the rotors by %i miles to start. Fighters are short range because of the increased drain from heavy weapons.", drainPerOption);

        if (weapon == LASER)
    {

        [self setDrainPerOption:5];
        [self setAdjustedAirTime:(airTime - drainPerOption)];


    }
        else if (weapon == LASER_AND_GUN)
    
    {

        [self setDrainPerOption:20];
        [self setAdjustedAirTime:(airTime - drainPerOption)];


    }

        else if (weapon == LASER_GUN_AND_BOMB)
    
    {
    
        [self setDrainPerOption:30];
        [self setAdjustedAirTime:(airTime - drainPerOption)];

    
    }

        else
    {
        NSLog(@"With each batch of weapons comes a cost in minutes of airtime. The standard flight time of a drone is %i. With the laser, it loses 5 minutes of airtime due to weight and battery drain. The total airtime for a laser equipped fighter drone is %i.",airTime, self.adjustedAirTime);

    }



}


@end
