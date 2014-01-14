//
//  transportDrone.h
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseDrone.h"

typedef enum


//Number of rotors...transport drones are meant to carry heavy loads, therefore more rotor option is its greatest strength
//More cargo-shorter distances......less cargo-farther distances
{
    TWO_ROTORS,
    FOUR_ROTORS,
    SIX_ROTORS,
    EIGHT_ROTORS

} extraRotorsEnum;

@interface transportDrone : baseDrone

//define properties

@property int extraRotors;
@property int distancePerRotor;
@property int totalRotorDist;

@end
