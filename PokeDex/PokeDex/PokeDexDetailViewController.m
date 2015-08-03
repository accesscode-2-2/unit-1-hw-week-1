//
//  PokeDexDetailViewController.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import "PokeDexDetailViewController.h"

@interface PokeDexDetailViewController ()

@end

@implementation PokeDexDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pokemonNameLabel.text = self.pokemonName;
    self.pokemonImageView.image = self.pokemonImage;

}

@end