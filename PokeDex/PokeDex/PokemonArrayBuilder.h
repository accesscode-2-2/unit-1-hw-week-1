//
//  PokemonArrayBuilder.h
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PokemonArrayBuilder : NSObject

+ (NSArray *)pokemonArrayFromJSON:(NSData *)objectNotation error:(NSError **)error;

@end
