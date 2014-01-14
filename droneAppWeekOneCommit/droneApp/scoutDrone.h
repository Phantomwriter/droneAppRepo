//
//  scoutDrone.h
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//


#import "baseDrone.h"

typedef enum


//Scout drone carries extra battery power to power these excellent intel gatheirng options but it drains the power from the standard rotors to do so
{
    X_RAY,
    SONAR,
    INFRARED
}spyOptionEnum;


@interface scoutDrone : baseDrone


//define properties

@property int totalMileWithDrain;
@property int selectedSpyOption;
@property int rotorDrainPerOption;
@property int baseRotor;
@property NSString* nameOfSpyOption;


@end
