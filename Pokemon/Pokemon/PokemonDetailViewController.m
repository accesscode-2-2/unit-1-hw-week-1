//
//  PokemonDetailViewController.m
//  Flags
//
//  Created by Michael Kavouras on 7/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
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
    self.pokemonImage.image = self.pokemonPhoto;
    
}

@end

