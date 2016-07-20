//
//  FoodViewController.m
//  myTabbedApp
//
//  Created by Aditya Narayan on 6/20/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import "FoodViewController.h"

@interface FoodViewController ()

@end

@implementation FoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Food", @"Food");
        self.tabBarItem.image = [UIImage imageNamed:@"food"];
    }
    return self;
}

- (IBAction)sushiButtonClicked:(id)sender {
    self.favoriteFood = @"sushi";
    [self printFavoriteFood];
}

- (IBAction)burgerButtonClicked:(id)sender {
    self.favoriteFood = @"burger";
    [self printFavoriteFood];
}

- (IBAction)steakButtonClicked:(id)sender {
    self.favoriteFood = @"steak";
    [self printFavoriteFood];
}

- (IBAction)padThaiButtonClicked:(id)sender {
    self.favoriteFood = @"pad thai";
    [self printFavoriteFood];
}

- (IBAction)pizzaButtonClicked:(id)sender {
    self.favoriteFood = @"pizza";
    [self printFavoriteFood];
}

- (IBAction)saladButtonClicked:(id)sender {
    self.favoriteFood = @"salad";
    [self printFavoriteFood];
}

- (IBAction)soupButtonClicked:(id)sender {
    self.favoriteFood = @"soup";
    [self printFavoriteFood];
}

- (IBAction)empanadaButtonClicked:(id)sender {
     self.favoriteFood = @"empanada";
    [self printFavoriteFood];
}

- (IBAction)risottoButtonClicked:(id)sender {
    self.favoriteFood = @"risotto";
    [self printFavoriteFood];
}

- (void)printFavoriteFood {
    
    NSDictionary * extraInfo = [NSDictionary dictionaryWithObject:self.favoriteFood forKey:@"food"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Update" object:self userInfo:extraInfo];
    
    NSLog(@"Their favorite food is %@", self.favoriteFood);
}

@end
