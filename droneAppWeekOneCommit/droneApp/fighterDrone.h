//
//  fighterDrone.h
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "baseDrone.h"

typedef enum


//The fighter drone is armored and can carry some or all of these weapons. The amount of flight time is severely decresed so that it's abilities aren't measured in miles but in airtime. Short bursts...heavy combat

{
   LASER,
    LASER_AND_GUN,
    LASER_GUN_AND_BOMB
    
    
} weaponEnum;


@interface fighterDrone : baseDrone


//define properties

@property int drainPerOption;
@property int adjustedAirTime;
@property int weapon;
@property int airTime;




@end
