//
//  PokemonArray.h
//  Pokemon
//
//  Created by Artur Lan on 7/29/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PokemonArray : NSObject

@property (nonatomic) NSString *namePokemon;
@property (nonatomic) NSString *picturePokemonURL;

+ (NSArray *)allPokemons;

- (UIImage *)picturePokemon;

@end
