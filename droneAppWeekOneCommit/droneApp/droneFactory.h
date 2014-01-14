//
//  droneFactory.h
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseDrone.h"
#import "transportDrone.h"
#import "scoutDrone.h"
#import "fighterDrone.h"


@interface droneFactory : NSObject


//static method
+(baseDrone *)createNewDrone: (int)droneType;

@end
