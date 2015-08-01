//
//  PokemonList.m
//  Pokemon
//
//  Created by Brian Blanco on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonList.h"
#import "PokemonLibrary.h"

@implementation PokemonList

- (instancetype)initWithIndex:(NSUInteger)index {
    self = [super init];
    if (self) {
        PokemonLibrary *pokemonLibrary = [[PokemonLibrary alloc] init];
        NSArray *library = pokemonLibrary.library;
        
        NSDictionary *pokemonlistDictionary = library[index];
        
        _pokemonName = [pokemonlistDictionary objectForKey:kName];
        _pokemonDescription = [pokemonlistDictionary objectForKey:kDescription];
        
        NSString *iconName = [pokemonlistDictionary objectForKey:kIcon];
        _pokemonIcon = [UIImage imageNamed:iconName];
        
        NSString *largeIconName = [pokemonlistDictionary objectForKey:kLargeIcon];
        _pokemonIconLarge = [UIImage imageNamed:largeIconName];
        
        _pokemonType = [NSArray arrayWithArray:[pokemonlistDictionary objectForKey:kType]];
        
        
        
    }
    return self;
}

@end
