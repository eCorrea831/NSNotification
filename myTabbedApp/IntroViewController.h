//
//  IntroViewController.h
//  myTabbedApp
//
//  Created by Aditya Narayan on 6/20/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IntroViewController : UIViewController

//test

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextView *welcomeTextView;
@property (weak, nonatomic) IBOutlet UILabel *favoriteAnimalLabel;
@property (weak, nonatomic) IBOutlet UILabel *favoriteColorLabel;
@property (weak, nonatomic) IBOutlet UILabel *favoriteFoodLabel;

@property (weak, nonatomic) IBOutlet UILabel *favoriteLabel1;
@property (weak, nonatomic) IBOutlet UILabel *favoriteLabel2;
@property (weak, nonatomic) IBOutlet UILabel *favoriteLabel3;

@property (nonatomic, retain) NSString * userName;

- (IBAction)submitUserName:(id)sender;

@end

