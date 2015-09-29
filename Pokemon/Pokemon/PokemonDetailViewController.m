//
//  PokemonDetailViewController.m
//  Pokemon
//
//  Created by Kaisha Jones on 9/29/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonDetailViewController.h"

@interface PokemonDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pokemonImage;

@end

@implementation PokemonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pokemonNameLabel.text = self.pokemonName;
    self.pokemonImage.image = [UIImage imageNamed:self.pokemonName];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end