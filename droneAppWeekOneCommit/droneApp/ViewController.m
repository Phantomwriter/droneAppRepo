//
//  ViewController.m
//  droneApp
//
//  Created by Howard Livingston on 1/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "ViewController.h"
#import "droneFactory.h"
#import "baseDrone.h"
#import "transportDrone.h"
#import "scoutDrone.h"
#import "fighterDrone.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    
    //Permanent App background
        self.view.backgroundColor = [UIColor colorWithRed:0.047 green:0.353 blue:0.651 alpha:1];
    
    

    //Create a TRANSPORT DRONE///////////////////////////////////////////////
    
    
        transportDrone *createTransportDrone =(transportDrone*) [droneFactory createNewDrone:TRANSPORT];
        [createTransportDrone setExtraRotors:EIGHT_ROTORS];
    
        if (createTransportDrone != nil)
    
    {
        
        
    //Create text for the TRANSPORT DRONE label
        
        NSString *transportDroneName = @"TRANSPORT DRONE and it's field name is BIG MAMA.";
        [createTransportDrone setDroneName:transportDroneName];
        
    
        NSString *droneRequirements = @"This drone can have up to ten rotors";
        [createTransportDrone setDroneRequirements:droneRequirements];
        
        
        [createTransportDrone totalDistanceInMiles];
    
    
    //1)Create the TRANSPORT DRONE label
        
        transportDroneLabel = [[UILabel alloc] initWithFrame:CGRectMake(150.0f, 300.0f,480.0f, 80.0f)];
        transportDroneLabel.text = [NSString stringWithFormat:@"You've chosen the %@. %@",[createTransportDrone droneName],[createTransportDrone droneRequirements]];
        transportDroneLabel.backgroundColor = [UIColor colorWithRed:0.651 green:0.137 blue:0 alpha:1];
        transportDroneLabel.textAlignment = NSTextAlignmentCenter;
        transportDroneLabel.font = [UIFont systemFontOfSize:14.0f];
        transportDroneLabel.numberOfLines = 4;
        
        
        [self.view addSubview:transportDroneLabel];
    
    
    //2)Create the second TRANSPORT DRONE Label
        
    
        transportMilesLabel = [[UILabel alloc] initWithFrame:CGRectMake(150.0f, 400.0f,480.0f, 80.0f)];
        transportMilesLabel.text = [NSString stringWithFormat:@"The Transport Drone can have %i extra rotors and can travel %i extra miles per rotor", [createTransportDrone extraRotors], [createTransportDrone distancePerRotor]];
        transportMilesLabel.backgroundColor = [UIColor colorWithRed:230/255.0f green:25/255.0f blue:85/255.0f alpha:1.0f];;
        transportMilesLabel.textAlignment = NSTextAlignmentCenter;
        transportDroneLabel.font = [UIFont systemFontOfSize:14.0f];
        transportMilesLabel.numberOfLines = 4;
        
        
        [self.view addSubview:transportMilesLabel];
        
        
    
        
        
    //Create a SCOUT DRONE///////////////////////////////////////////////
        
        scoutDrone *createScoutDrone =(scoutDrone*) [droneFactory createNewDrone:SCOUT];
        [createScoutDrone setSelectedSpyOption:INFRARED];
        
        if (createScoutDrone != nil)
            
        {
            
            
    //Create text for the scout drone label
        
        NSString *scoutDroneName = @"SCOUT DRONE and it's field name is RECON.";
        [createScoutDrone setDroneName:scoutDroneName];
            
            
        NSString *droneRequirements = @"This drone can have up to 6 rotors";
        [createScoutDrone setDroneRequirements:droneRequirements];
            
        
        [createScoutDrone totalDistanceInMiles];
            
            
    //3)Create the scout drone label
            
        scoutDroneLabel = [[UILabel alloc] initWithFrame:CGRectMake(150.0f, 500.0f,480.0f, 80.0f)];
        scoutDroneLabel.text = [NSString stringWithFormat:@"You've chosen the %@. %@",[createScoutDrone droneName],[createScoutDrone droneRequirements]];
        scoutDroneLabel.backgroundColor = [UIColor colorWithRed:230/255.0f green:133/255.0f blue:44/255.0f alpha:1.0f];;
        scoutDroneLabel.textAlignment = NSTextAlignmentCenter;
        scoutDroneLabel.numberOfLines = 4;
        scoutDroneLabel.font = [UIFont systemFontOfSize:14.0f];

            
            
            [self.view addSubview:scoutDroneLabel];
            
            
    //4)Create second scout drone Label
            
            
        scoutMilesLabel = [[UILabel alloc] initWithFrame:CGRectMake(150.0f, 600.0f,480.0f, 80.0f)];
        scoutMilesLabel.text = [NSString stringWithFormat:@"The Scout drone has %@ capabilities and has %i extra rotors and can only travel %i extra miles with the infrared drain on the rotors",[createScoutDrone nameOfSpyOption],[createScoutDrone baseRotor], [createScoutDrone totalMileWithDrain]];
        scoutMilesLabel.backgroundColor = [UIColor colorWithRed:255/255.0f green:195/255.0f blue:113/255.0f alpha:1.0f];;
        scoutMilesLabel.textAlignment = NSTextAlignmentCenter;
        scoutMilesLabel.font = [UIFont systemFontOfSize:14.0f];
        scoutMilesLabel.numberOfLines = 4;
            
            
            [self.view addSubview:scoutMilesLabel];
            
            
    //Create a FIGHTER DRONE///////////////////////////////////////////////
        
        fighterDrone *createFighterDrone =(fighterDrone*) [droneFactory createNewDrone:FIGHTER];
        [createFighterDrone setWeapon:LASER_AND_GUN];
            
        if (createFighterDrone != nil)
                
        {
                
                
    //Create text for the fighter drone label
                
        NSString *fighterDroneName = @"FIGHTER DRONE and it's field name is STINGER.";
        [createFighterDrone setDroneName:fighterDroneName];
                
                
        NSString *droneRequirements = @"This drone can have up to 6 rotors";
        [createFighterDrone setDroneRequirements:droneRequirements];
                
                
        [createFighterDrone totalDistanceInMiles];
                
                
    //5)Create the fighter drone label
                
        fighterDroneLabel = [[UILabel alloc] initWithFrame:CGRectMake(150.0f, 700.0f,480.0f, 80.0f)];
        fighterDroneLabel.text = [NSString stringWithFormat:@"You've chosen the %@. %@",[createFighterDrone droneName],[createFighterDrone droneRequirements]];
        fighterDroneLabel.backgroundColor = [UIColor colorWithRed:230/255.0f green:207/255.0f blue:82/255.0f alpha:1.0f];;
        fighterDroneLabel.textAlignment = NSTextAlignmentCenter;
        fighterDroneLabel.font = [UIFont systemFontOfSize:14.0f];
        fighterDroneLabel.numberOfLines = 4;
            
                
                
        [self.view addSubview:fighterDroneLabel];
                
                
    //6)Create the second fighter drone Label
                
                
        fighterTimeLabel = [[UILabel alloc] initWithFrame:CGRectMake(150.0f, 800.0f,480.0f, 80.0f)];
        fighterTimeLabel.text = [NSString stringWithFormat:@"The Fighter Drone packs a punch and is designed to carry weaponry. Each weapon adds weight and decreases the standard %i minutes of airtime of the drone. For the laser, the adjusted airtime minutes is %i minutes", [createFighterDrone airTime], [createFighterDrone adjustedAirTime]];            
        fighterTimeLabel.backgroundColor = [UIColor colorWithRed:230/255.0f green:256/255.0f blue:6/255.0f alpha:1.0f];;
        fighterTimeLabel.textAlignment = NSTextAlignmentCenter;
        fighterDroneLabel.font = [UIFont systemFontOfSize:14.0f];

        fighterTimeLabel.numberOfLines = 4;
                
                
        [self.view addSubview:fighterTimeLabel];
                            
            
        }
    }
        
        
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
