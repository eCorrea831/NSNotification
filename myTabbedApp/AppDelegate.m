//
//  AppDelegate.m
//  myTabbedApp
//
//  Created by Aditya Narayan on 6/20/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import "AppDelegate.h"
#import "IntroViewController.h"
#import "AnimalViewController.h"
#import "ColorViewController.h"
#import "FoodViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIViewController *vc1 = [[IntroViewController alloc] initWithNibName:@"IntroViewController" bundle:nil];
    UIViewController *vc2 = [[AnimalViewController alloc] initWithNibName:@"AnimalViewController" bundle:nil];
    UIViewController *vc3 = [[ColorViewController alloc] initWithNibName:@"ColorViewController" bundle:nil];
    UIViewController *vc4 = [[FoodViewController alloc] initWithNibName:@"FoodViewController" bundle:nil];
    
    UINavigationController *navcntrl1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    UINavigationController *navcntrl2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    UINavigationController *navcntrl3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    UINavigationController *navcntrl4 = [[UINavigationController alloc] initWithRootViewController:vc4];
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[navcntrl1, navcntrl2, navcntrl3, navcntrl4];
    self.window.rootViewController = self.tabBarController;
    self.tabBarController.moreNavigationController.navigationBar.tintColor = [UIColor colorWithRed:0.85 green:0.82 blue:0.91 alpha:1.0];
    self.window.backgroundColor = [UIColor colorWithRed:0.40 green:0.31 blue:0.65 alpha:1.0];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
