//
//  ColorViewController.m
//  myTabbedApp
//
//  Created by Aditya Narayan on 6/20/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Color", @"Color");
        self.tabBarItem.image = [UIImage imageNamed:@"color"];
    }
    return self;
}

- (IBAction)redButtonClicked:(id)sender {
    self.favoriteColor = @"red";
    [self printFavoriteColor];
}

- (IBAction)purpleButtonClicked:(id)sender {
    self.favoriteColor = @"purple";
    [self printFavoriteColor];
}

- (IBAction)blueButtonClicked:(id)sender {
    self.favoriteColor = @"blue";
    [self printFavoriteColor];
}

- (IBAction)yellowButtonClicked:(id)sender {
    self.favoriteColor = @"yellow";
    [self printFavoriteColor];
}

- (IBAction)greenButtonClicked:(id)sender {
    self.favoriteColor = @"green";
    [self printFavoriteColor];
}

- (IBAction)pinkButtonClicked:(id)sender {
    self.favoriteColor = @"pink";
    [self printFavoriteColor];
}

- (IBAction)blackButtonClicked:(id)sender {
    self.favoriteColor = @"black";
    [self printFavoriteColor];
}

- (IBAction)orangeButtonClicked:(id)sender {
    self.favoriteColor = @"orange";
    [self printFavoriteColor];
}

- (IBAction)grayButtonClicked:(id)sender {
    self.favoriteColor = @"gray";
    [self printFavoriteColor];
}

- (void)printFavoriteColor {
    
    NSDictionary * extraInfo = [NSDictionary dictionaryWithObject:self.favoriteColor forKey:@"color"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Update" object:self userInfo:extraInfo];
    
    NSLog(@"Their favorite color is %@", self.favoriteColor);
}

@end
