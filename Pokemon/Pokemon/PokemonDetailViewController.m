//
//  PokemonDetailViewController.m
//  Flags
//
//  Created by Michael Kavouras on 7/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonDetailViewController.h"

@interface PokemonDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *pokemonImageView;
@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;

@end

@implementation PokemonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pokemonImageView.image = [self.pokemon image];
    self.pokemonNameLabel.text = self.pokemon.name;
}

@end
