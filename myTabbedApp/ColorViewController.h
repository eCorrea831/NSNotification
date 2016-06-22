//
//  ColorViewController.h
//  myTabbedApp
//
//  Created by Aditya Narayan on 6/20/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorViewController : UIViewController

@property(nonatomic, retain) NSString * favoriteColor;

- (IBAction)redButtonClicked:(id)sender;
- (IBAction)purpleButtonClicked:(id)sender;
- (IBAction)blueButtonClicked:(id)sender;
- (IBAction)yellowButtonClicked:(id)sender;
- (IBAction)greenButtonClicked:(id)sender;
- (IBAction)pinkButtonClicked:(id)sender;
- (IBAction)blackButtonClicked:(id)sender;
- (IBAction)orangeButtonClicked:(id)sender;
- (IBAction)grayButtonClicked:(id)sender;

@end
