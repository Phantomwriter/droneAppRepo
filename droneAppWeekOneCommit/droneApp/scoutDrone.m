//
//  scoutDrone.m
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "scoutDrone.h"
#import "baseDrone.h"



@implementation scoutDrone

@synthesize totalMileWithDrain,rotorDrainPerOption,selectedSpyOption, baseRotor,nameOfSpyOption;


-(id)init
{
    
    self = [super init];
    if (self != nil)
    {
        [self setSelectedSpyOption:INFRARED];
        [self setTotalMileWithDrain:0];
        [self setRotorDrainPerOption:1];
        [self setBaseRotor:4];
        
        
        
    }
    return self;
    
};

-(void)totalDistanceInMiles;
{

    NSLog(@"The Scout Drone has four Rotors and is affected by what option you choose. Each option drains the rotors differently. Each rotor is drained %i mile of flight per rotor",rotorDrainPerOption);
    
    
        if (selectedSpyOption == INFRARED)
    {
    
        [self setRotorDrainPerOption:1];
        [self setTotalMileWithDrain:(self.distPerRotor - rotorDrainPerOption)*baseRotor];
        [self setNameOfSpyOption:(@"Infrared")];
    }
    
        else if
        (selectedSpyOption == SONAR)

    {
        [self setRotorDrainPerOption:2];
        [self setTotalMileWithDrain:(self.distPerRotor - rotorDrainPerOption)*baseRotor];
        [self setNameOfSpyOption:(@"Sonar")];

    }
    
        else if
        (selectedSpyOption == X_RAY)
        
    {
        [self setRotorDrainPerOption:3];
        [self setTotalMileWithDrain:(self.distPerRotor - rotorDrainPerOption)*baseRotor];
        [self setNameOfSpyOption:(@"X-Ray")];

        
    }
    else
    {
    
        NSLog(@"You need to select some cool tech for your Scout Drone");
    
        
    }
    
    
    NSLog(@"The %@ option allows %d miles of travel.", nameOfSpyOption, self.totalMileWithDrain);
    
        



}

@end
