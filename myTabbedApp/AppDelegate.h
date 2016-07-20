//
//  AppDelegate.h
//  myTabbedApp
//
//  Created by Aditya Narayan on 6/20/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow * window;
@property (strong, nonatomic) UITabBarController * tabBarController;

@end

