//
//  PokemonDetailViewController.h
//  Pokemon
//
//  Created by Kaisha Jones on 9/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PokemonArray.h"

@interface PokemonDetailViewController : UIViewController

@property (nonatomic) NSString *pokemonName;
@property (nonatomic) PokemonArray *pokemon;

@end
