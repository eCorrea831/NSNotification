//
//  AnimalViewController.m
//  myTabbedApp
//
//  Created by Aditya Narayan on 6/20/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import "AnimalViewController.h"

@interface AnimalViewController ()

@end

@implementation AnimalViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Animal", @"Animal");
        self.tabBarItem.image = [UIImage imageNamed:@"animal"];
    }
    return self;
}

- (IBAction)leopardButtonClicked:(id)sender {
    self.favoriteAnimal = @"leopards";
    [self printFavoriteAnimal];
}

- (IBAction)tucanButtonClicked:(id)sender {
    self.favoriteAnimal = @"tucans";
    [self printFavoriteAnimal];
}

- (IBAction)seahorseButtonClicked:(id)sender {
    self.favoriteAnimal = @"seahorses";
    [self printFavoriteAnimal];
}

- (IBAction)monkeyButtonClicked:(id)sender {
    self.favoriteAnimal = @"monkeys";
    [self printFavoriteAnimal];
}

- (IBAction)elephantButtonClicked:(id)sender {
    self.favoriteAnimal = @"elephants";
    [self printFavoriteAnimal];
}

- (IBAction)puppyButtonClicked:(id)sender {
    self.favoriteAnimal = @"puppies";
    [self printFavoriteAnimal];
}

- (IBAction)kittenButtonClicked:(id)sender {
    self.favoriteAnimal = @"kittens";
    [self printFavoriteAnimal];
}

- (IBAction)turtleButtonClicked:(id)sender {
    self.favoriteAnimal = @"turtles";
    [self printFavoriteAnimal];
}

- (IBAction)giraffeButtonClicked:(id)sender {
    self.favoriteAnimal = @"giraffes";
    [self printFavoriteAnimal];
}

- (void)printFavoriteAnimal {
    
    NSDictionary * extraInfo = [NSDictionary dictionaryWithObject:self.favoriteAnimal forKey:@"animal"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Update" object:self userInfo:extraInfo];
    
    NSLog(@"Their favorite animal is %@", self.favoriteAnimal);
}

@end
