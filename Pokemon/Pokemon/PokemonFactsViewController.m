//
//  PokemonFactsViewController.m
//  Pokemon
//
//  Created by Shena Yoshida on 7/29/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonFactsViewController.h"

@interface PokemonFactsViewController ()

// drag label and imageview over here to create new properties + outlets
@property (weak, nonatomic) IBOutlet UIImageView *pokemonFactsView;
@property (weak, nonatomic) IBOutlet UILabel *pokemonFactsLabel;

@end

@implementation PokemonFactsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pokemonFactsLabel.text = self.pokemonName;
    self.pokemonFactsView.image = [UIImage imageNamed:self.pokemonName];
    
    // self.pokemonFactsLabel.text = @"want to see mah pokemans?"; // [self.pokemonList.name]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
