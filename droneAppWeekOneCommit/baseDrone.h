//
//  baseDrone.h
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <Foundation/Foundation.h>


//Create base drone types


typedef enum

{
    TRANSPORT,
    FIGHTER,
    SCOUT
    
} EDroneType;


@interface baseDrone : NSObject


{
    NSInteger EDroneType;
    
}



//A string to reveal it's name as called in the field.
//
            @property NSString *droneName;
//
// A String list of what the drone needs to be complete. Rotors, Weapons, Stealth, etc.
//
            @property NSString *droneRequirements;
//
//Number of rotors
//
             @property int numOfRotors;
//
//With the drone that is selected, how much distance each of the rotors get.

            @property int distPerRotor;


  
-(id)init;


//Calculate total distnce the selected drone can travel in miles, depending on the one selected.s

//Reveals current calculation in the consolelog

-(void)totalDistanceInMiles;



@end
