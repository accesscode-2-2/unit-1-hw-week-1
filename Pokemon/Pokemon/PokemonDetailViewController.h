//
//  PokemonDetailViewController.h
//  Pokemon
//
//  Created by Brian Blanco on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PokemonList;

@interface PokemonDetailViewController : UIViewController

@property (strong, nonatomic) PokemonList *pokemonlist;
@property (weak, nonatomic) IBOutlet UIImageView *pokemonlistCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *pokemonTitle;
@property (weak, nonatomic) IBOutlet UILabel *pokemonDescription;
@property (weak, nonatomic) IBOutlet UILabel *pokemonType0;
@property (weak, nonatomic) IBOutlet UILabel *pokemonType1;

@end
