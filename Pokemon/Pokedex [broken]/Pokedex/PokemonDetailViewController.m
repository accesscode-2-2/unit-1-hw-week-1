//
//  PokemonDetailViewController.m
//  Pokedex
//
//  Created by Eric Sze on 7/31/15.
//  Copyright (c) 2015 Eric Sze. All rights reserved.
//

#import "PokemonDetailViewController.h"

@interface PokemonDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *pImage;
@property (weak, nonatomic) IBOutlet UILabel *pLabel;

@end

@implementation PokemonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pLabel.text = self.pokemonName;
    self.pImage = [UIImage imageNamed:self.pokemonName];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
