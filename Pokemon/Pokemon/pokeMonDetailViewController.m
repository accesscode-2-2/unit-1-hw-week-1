//
//  pokeMonDetailViewController.m
//  Pokemon
//
//  Created by Xiulan Shi on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "pokeMonDetailViewController.h"

@interface pokeMonDetailViewController ()

@end

@implementation pokeMonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = self.pokemonName;
    
    NSString *imageName = [self.pokemonName lowercaseString];
    self.imageView.image = [UIImage imageNamed:imageName];
    
    self.navigationItem.title = self.pokemonName;
}

@end
