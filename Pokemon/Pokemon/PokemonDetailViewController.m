//
//  PokemonDetailViewController.m
//  Pokemon
//
//  Created by Brian Blanco on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonDetailViewController.h"
#import "PokemonList.h"


@interface PokemonDetailViewController ()

@end

@implementation PokemonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.pokemonlist) {
        self.pokemonlistCoverImage.image = self.pokemonlist.pokemonIconLarge;
        self.pokemonTitle.text = self.pokemonlist.pokemonName;
        self.pokemonDescription.text = self.pokemonlist.pokemonDescription;
        
        self.pokemonType0.text = self.pokemonlist.pokemonType[0];
        self.pokemonType1.text = self.pokemonlist.pokemonType[1];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
