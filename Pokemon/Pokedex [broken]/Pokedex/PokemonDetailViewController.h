//
//  PokemonDetailViewController.h
//  Pokedex
//
//  Created by Eric Sze on 7/31/15.
//  Copyright (c) 2015 Eric Sze. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PokedexTableViewController.h"

@interface PokemonDetailTableViewController : UITableViewController

@property (nonatomic) PokedexTableViewController *pokedex;
@property (nonatomic) NSString *pokemonName;

@end