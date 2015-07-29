
//
//  PokemonArrayBuilder.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

// All the JSON parsing happens here. The class then creates instances of the Pokemon class
// and stores them all in an array.

#import "PokemonArrayBuilder.h"
#import "Pokemon.h"

@implementation PokemonArrayBuilder

+ (NSArray *)pokemonArrayFromJSON:(NSData *)objectNotation error:(NSError **)error {
    NSError *localError = nil;
    
    NSArray *results = [NSJSONSerialization JSONObjectWithData:objectNotation
                                                                 options:0
                                                                   error:&localError];
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    
    NSMutableArray *allPokemon = [[NSMutableArray alloc] init];
    
    //NSLog(@"Pokemon count: %lu", results.count);
    //NSLog(@"Results: %@", results);
    
    // loops through all the dictionary entries in the json results
    for (NSDictionary *pokemonDict in results) {
        
        // creates a pokemon instance for each one
        Pokemon *pokemon = [[Pokemon alloc] init];
        //NSLog(@"%@", pokemonDict);
        
        // loops through each key in the individual pokemon's dictionary
        for (NSString *key in pokemonDict) {
            //NSLog(@"Key: %@", key);
            
            // setup selectorkey for pokemon class to include the 'poke_' prefix I added
            // due to 'id' being a reserved word in Objective-C
            NSString *prefixedKey = [NSString stringWithFormat:@"%@%@", pokemon.propertyPrefix, key];
            
            // using some default NSObject methods, we check to see if the pokemon instance
            // has a property that matches the dictionary key. If it does, we pass the value
            // to the pokemon instance's property
            if ([pokemon respondsToSelector:NSSelectorFromString(prefixedKey)]) {
                [pokemon setValue:[pokemonDict valueForKey:key] forKey:prefixedKey];
            }
        }
        
        // debug
        NSLog(@"%lu", pokemon.poke_id);
        NSLog(@"%@", pokemon.poke_image_uri);
        NSLog(@"%@", pokemon.poke_name);
        NSLog(@"%@", pokemon.poke_resource_uri);
        NSLog(@"%@", pokemon.poke_types);
        
        // finally we add each pokemon to the allPokemon array
        [allPokemon addObject:pokemon];

    }
    
    return allPokemon;
}

@end
