//
//  PokemonOrderedDictionaryBuilder.h
//  PokeDex
//
//  Created by Elber Carneiro on 8/1/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderedDictionary.h"

@interface PokemonOrderedDictionaryBuilder : NSObject

- (OrderedDictionary *)setupAllPokemonAlphabetical:(NSArray *)allPokemon
                                         withIndex:(NSArray *)pokemonIndex;
- (OrderedDictionary *)setupAllPokemonByType:(NSArray *)allPokemon;

@end
