//
//  IntroViewController.m
//  myTabbedApp
//
//  Created by Aditya Narayan on 6/20/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import "IntroViewController.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Welcome", @"Welcome");
        UIImage * image = [UIImage imageNamed:@"intro"];
        [image drawInRect:CGRectMake(0, 0, 10, 10)];
        self.tabBarItem.image = image;
    }
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:)
                                                 name:@"Update"
                                               object:nil];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.welcomeTextView.hidden = YES;
    self.favoriteLabel1.hidden = YES;
    self.favoriteLabel2.hidden = YES;
    self.favoriteLabel3.hidden = YES;
    self.favoriteAnimalLabel.hidden = YES;
    self.favoriteAnimalLabel.text = @"Not yet indicated";
    self.favoriteColorLabel.hidden = YES;
    self.favoriteColorLabel.text = @"Not yet indicated";
    self.favoriteFoodLabel.hidden = YES;
    self.favoriteFoodLabel.text = @"Not yet indicated";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)submitUserName:(id)sender {
    self.userName = self.userNameTextField.text;
    self.welcomeTextView.hidden = NO;
    self.welcomeTextView.text = [NSString stringWithFormat:@"Welcome, %@. Let's find out your favorites! Click on the different tabs to pick your favorites then come back here to see your results.", self.userName];
     [self.view endEditing:YES];
}

- (void)receiveNotification:(NSNotification *)notifiation {
    NSDictionary * dictionary = notifiation.userInfo;
    
    if ([dictionary objectForKey:@"animal"]){
        
        self.favoriteLabel1.hidden = NO;
        self.favoriteAnimalLabel.hidden = NO;
        self.favoriteAnimalLabel.text = [dictionary objectForKey:@"animal"];
    }
    
    if ([dictionary objectForKey:@"color"]){
        
        self.favoriteLabel2.hidden = NO;
        self.favoriteColorLabel.hidden = NO;
        self.favoriteColorLabel.text = [dictionary objectForKey:@"color"];
    }
    
    if ([dictionary objectForKey:@"food"]){
        
        self.favoriteLabel3.hidden = NO;
        self.favoriteFoodLabel.hidden = NO;
        self.favoriteFoodLabel.text = [dictionary objectForKey:@"food"];
    }
}

@end
