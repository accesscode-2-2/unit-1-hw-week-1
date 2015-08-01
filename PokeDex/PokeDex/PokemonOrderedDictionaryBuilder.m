//
//  PokemonOrderedDictionaryBuilder.m
//  PokeDex
//
//  Created by Elber Carneiro on 8/1/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import "PokemonOrderedDictionaryBuilder.h"
#import "Pokemon.h"

@implementation PokemonOrderedDictionaryBuilder

- (OrderedDictionary *)setupAllPokemonAlphabetical:(NSArray *)allPokemon
                                         withIndex:(NSArray *)pokemonIndex {
    OrderedDictionary *allPokemonAlphabetical = [[OrderedDictionary alloc] init];
    for (NSString *key in pokemonIndex) {
        NSMutableArray *pokemonForOneLetter = [[NSMutableArray alloc] init];
        for (Pokemon *p in allPokemon) {
            NSString *firstCharacter = [NSString stringWithFormat:@"%c", [p.poke_name characterAtIndex:0]];
            if ([key isEqualToString:firstCharacter]) {
                [pokemonForOneLetter addObject:p];
            }
        }
        if ([pokemonForOneLetter count] > 0) {
            [allPokemonAlphabetical setObject:pokemonForOneLetter forKey:key];
        }
    }

    NSLog(@"%@", allPokemonAlphabetical);
    return allPokemonAlphabetical;
}

- (OrderedDictionary *)setupAllPokemonByType:(NSArray *)allPokemon {
    // get an array of all unique pokemon types
    NSMutableOrderedSet *pokemonTypesOrderedSet = [[NSMutableOrderedSet alloc] init];
    for (Pokemon *p in allPokemon) {
        [pokemonTypesOrderedSet addObjectsFromArray:p.poke_types];
    }
    NSArray *pokemonTypesArray = [NSArray arrayWithArray:[pokemonTypesOrderedSet array]];
    NSArray *alphaPokemonTypes = [pokemonTypesArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSLog(@"%@", alphaPokemonTypes);
    
    // create dictionary of pokemon using the types as keys
    // start with blank dictionary
    OrderedDictionary *allPokemonByType = [[OrderedDictionary alloc] init];
    
    // add keys with blank arrays as values
    for (NSString *key in alphaPokemonTypes) {
        [allPokemonByType setObject:[[NSMutableArray alloc]init] forKey:key];
    }
    
    // if a key matches a pokemon's poke_type, add the pokemon to
    // the array for the corresponding key. This means pokemon with multiple
    // types should be represented in multiple arrays
    for (NSString *key in alphaPokemonTypes) {
        for (Pokemon *p in allPokemon) {
            for (NSString *t in p.poke_types) {
                if ([key isEqualToString:t]) {
                    [allPokemonByType[key] addObject:p];
                }
            }
        }
    }

    NSLog(@"%@", allPokemonByType);
    return allPokemonByType;
}

@end
