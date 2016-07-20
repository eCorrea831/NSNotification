//
//  AnimalViewController.h
//  myTabbedApp
//
//  Created by Aditya Narayan on 6/20/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimalViewController : UIViewController

@property(nonatomic, retain) NSString * favoriteAnimal;

- (IBAction)leopardButtonClicked:(id)sender;
- (IBAction)tucanButtonClicked:(id)sender;
- (IBAction)seahorseButtonClicked:(id)sender;
- (IBAction)monkeyButtonClicked:(id)sender;
- (IBAction)elephantButtonClicked:(id)sender;
- (IBAction)puppyButtonClicked:(id)sender;
- (IBAction)kittenButtonClicked:(id)sender;
- (IBAction)turtleButtonClicked:(id)sender;
- (IBAction)giraffeButtonClicked:(id)sender;

@end
