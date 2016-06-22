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
    self.favoriteAnimal = @"leopard";
    [self printFavoriteAnimal];
}

- (IBAction)tucanButtonClicked:(id)sender {
    self.favoriteAnimal = @"tucan";
    [self printFavoriteAnimal];
}

- (IBAction)seahorseButtonClicked:(id)sender {
    self.favoriteAnimal = @"seahorse";
    [self printFavoriteAnimal];
}

- (IBAction)monkeyButtonClicked:(id)sender {
    self.favoriteAnimal = @"monkey";
    [self printFavoriteAnimal];
}

- (IBAction)elephantButtonClicked:(id)sender {
    self.favoriteAnimal = @"elephant";
    [self printFavoriteAnimal];
}

- (IBAction)puppyButtonClicked:(id)sender {
    self.favoriteAnimal = @"puppy";
    [self printFavoriteAnimal];
}

- (IBAction)kittenButtonClicked:(id)sender {
    self.favoriteAnimal = @"kitten";
    [self printFavoriteAnimal];
}

- (IBAction)turtleButtonClicked:(id)sender {
    self.favoriteAnimal = @"turtle";
    [self printFavoriteAnimal];
}

- (IBAction)giraffeButtonClicked:(id)sender {
    self.favoriteAnimal = @"giraffe";
    [self printFavoriteAnimal];
}

- (void)printFavoriteAnimal {
    
    NSDictionary * extraInfo = [NSDictionary dictionaryWithObject:self.favoriteAnimal forKey:@"animal"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Update" object:self userInfo:extraInfo];
    
    NSLog(@"Their favorite animal is %@", self.favoriteAnimal);
}

@end
