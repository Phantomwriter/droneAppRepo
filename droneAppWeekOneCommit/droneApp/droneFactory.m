//
//  droneFactory.m
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "droneFactory.h"

@implementation droneFactory

//Create a new drone

+(baseDrone *)createNewDrone: (int)droneType;

{

    //Create a Transport Drone
    if (droneType == TRANSPORT)
    {
        
        return [[transportDrone alloc]init];
    }
    
    //Create a Fighter Drone
    else if (droneType == FIGHTER)
    {
        
        return [[fighterDrone alloc]init];
    }
    
    //Create a Scout Drone
    else if (droneType == SCOUT)
    {
        
        return [[scoutDrone alloc]init];
    }
    
    else
        
    {
        return nil;
        
    }

}

@end
