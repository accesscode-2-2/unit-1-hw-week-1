//
//  PokemonDetailTableViewController.h
//  Pokedex
//
//  Created by Eric Sze on 7/30/15.
//  Copyright (c) 2015 Eric Sze. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PokedexTableViewController.h"
#import "Pokemon.h"

@interface PokemonDetailTableViewController : UITableViewController

@property (nonatomic) Pokemon *pokedex;

@end
