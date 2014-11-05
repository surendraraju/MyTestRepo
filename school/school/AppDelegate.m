//
//  AppDelegate.m
//  school
//
//  Created by Surendra's on 10/28/14.
//  Copyright (c) 2014 Surendra. All rights reserved.
//

#import "AppDelegate.h"

#import "ParentViewController.h"

#import "SchoolViewController.h"

#import "StudentViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        //Creating the View Controllers for the Tab items
        
        
        UIViewController *viewController1 = [[SchoolViewController alloc] initWithNibName:nil bundle:nil];
        
        UIViewController *viewController2 = [[ParentViewController alloc] initWithNibName:nil bundle:nil];
        
        
        UIViewController *viewController3 = [[StudentViewController alloc] initWithNibName:nil bundle:nil];
        
        
        
        
        //Adding the View controllers to the Navigation Controller
        
         UINavigationController * school =[[UINavigationController alloc]initWithRootViewController:viewController1];
        
        UINavigationController * parent =[[UINavigationController alloc]initWithRootViewController:viewController2];
        
        UINavigationController * student =[[UINavigationController alloc]initWithRootViewController:viewController3];
        
        
        self.tabBarController = [[UITabBarController alloc] init];
        
        self.tabBarController.viewControllers = [NSArray arrayWithObjects:school,parent,student, nil];
        
        self.window.rootViewController = self.tabBarController;
        

    }
    
    //Just adding this line to see if its gonna merge in the main origin 
    
    [self.window makeKeyAndVisible];

return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
