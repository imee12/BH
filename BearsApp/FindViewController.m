//
//  FindViewController.m
//  BearsApp
//
//  Created by Imee Cuison on 6/26/15.
//  Copyright (c) 2015 Imee Cuison. All rights reserved.
//

#import "FindViewController.h"

#import "SyncViewController.h"
#import "RFduinoManager.h"


@implementation FindViewController


- (IBAction)FindBtn_Click:(id)sender {
 
    NSLog(@"Find Button Pushed");
    rfduinoManager = RFduinoManager.sharedRFduinoManager;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    
     SyncViewController *viewController = [[SyncViewController alloc] init];
    
      UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController];
     [self.window setRootViewController:navController];
    
        navController.navigationBar.tintColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    
       self.window.backgroundColor = [UIColor whiteColor];
       [self.window makeKeyAndVisible];

    
}


@end
