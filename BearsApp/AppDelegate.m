//
//  AppDelegate.m
//  BearsApp
//
//  Created by Imee Cuison on 6/26/15.
//  Copyright (c) 2015 Imee Cuison. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>

#import "SyncViewController.h"
#import "RFduinoManager.h"

@interface AppDelegate()
{
    RFduinoManager *rfduinoManager;
    bool wasScanning;
}
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [Parse setApplicationId:@"tQv33PgatOPPPwiVJ7PZGfEs0FaW6VjYFKbupoMM"
                  clientKey:@"GmOS2lwTDtPC6UfhODx14m2loNnRHg1DTmKVgm2a"];
    
 // rfduinoManager = RFduinoManager.sharedRFduinoManager;
    
  //  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
   
    
   // SyncViewController *viewController = [[SyncViewController alloc] init];
    
  //  UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController];
   // [self.window setRootViewController:navController];
    
//    navController.navigationBar.tintColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    
 //   self.window.backgroundColor = [UIColor whiteColor];
 //   [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"applicationWillResignActive");
    
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    wasScanning = false;
    
    if (rfduinoManager.isScanning) {
        wasScanning = true;
        [rfduinoManager stopScan];
    }
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"applicationDidBecomeActive");
    
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    if (wasScanning) {
        [rfduinoManager startScan];
        wasScanning = false;
    }
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
