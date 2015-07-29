
//
//  PokemonArrayBuilder.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

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
    
    for (NSDictionary *pokemonDict in results) {
        Pokemon *pokemon = [[Pokemon alloc] init];
        //NSLog(@"%@", pokemonDict);
        
        for (NSString *key in pokemonDict) {
            //NSLog(@"Key: %@", key);
            
            NSString *prefixedKey = [NSString stringWithFormat:@"%@%@", pokemon.propertyPrefix, key];
            if ([pokemon respondsToSelector:NSSelectorFromString(prefixedKey)]) {
                
                [pokemon setValue:[pokemonDict valueForKey:key] forKey:prefixedKey];
                
            }
        }
        
        NSLog(@"%lu", pokemon.poke_id);
        NSLog(@"%@", pokemon.poke_image_uri);
        NSLog(@"%@", pokemon.poke_name);
        NSLog(@"%@", pokemon.poke_resource_uri);
        NSLog(@"%@", pokemon.poke_types);
        
        [allPokemon addObject:pokemon];

    }
    
    return allPokemon;
}

@end
