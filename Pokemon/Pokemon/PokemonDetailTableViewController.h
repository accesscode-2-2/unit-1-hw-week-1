//
//  PokemonDetailTableViewController.h
//  Pokemon
//
//  Created by Mesfin Bekele Mekonnen on 7/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PDPokemon.h"

@interface PokemonDetailTableViewController : UIViewController


@property (weak, nonatomic)  NSString *pokemonLabel;
@property (weak, nonatomic)  UIImage *pokemonSprite;
@property (weak, nonatomic) NSString *pokemonAbilities;
@property (nonatomic) PDPokemon *pokemon;

@end
