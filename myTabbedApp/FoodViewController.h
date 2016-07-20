//
//  FoodViewController.h
//  myTabbedApp
//
//  Created by Aditya Narayan on 6/20/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodViewController : UIViewController

@property(nonatomic, retain) NSString * favoriteFood;

- (IBAction)sushiButtonClicked:(id)sender;
- (IBAction)burgerButtonClicked:(id)sender;
- (IBAction)steakButtonClicked:(id)sender;
- (IBAction)padThaiButtonClicked:(id)sender;
- (IBAction)pizzaButtonClicked:(id)sender;
- (IBAction)saladButtonClicked:(id)sender;
- (IBAction)soupButtonClicked:(id)sender;
- (IBAction)empanadaButtonClicked:(id)sender;
- (IBAction)risottoButtonClicked:(id)sender;

@end
