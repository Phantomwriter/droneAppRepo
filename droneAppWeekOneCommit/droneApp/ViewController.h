//
//  ViewController.h
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "droneFactory.h"
@interface ViewController : UIViewController

{

    droneFactory * droneFactrory;
    
    //Labels for the drone types
    
            UILabel *transportDroneLabel;
    
            UILabel *scoutDroneLabel;
    
            UILabel *fighterDroneLabel;
    
    
    //Labels for the total distance the drone can travel for it's unique abilities and design
            UILabel *transportMilesLabel;
    
   
            UILabel *scoutMilesLabel;

    
            UILabel *fighterTimeLabel;

}

@end
