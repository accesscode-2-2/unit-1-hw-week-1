
//
//  PokemonArrayBuilder.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import "PokemonArrayBuilder.h"

@implementation PokemonArrayBuilder

+ (NSArray *)pokemonArrayFromJSON:(NSData *)objectNotation error:(NSError **)error {
    NSError *localError = nil;
    
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation
                                                                 options:0
                                                                   error:&localError];
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    
    NSLog(@"%@", parsedObject);
    
    NSMutableArray *pokemonGroup = [[NSMutableArray alloc] init];
    
    return nil;
}

@end
