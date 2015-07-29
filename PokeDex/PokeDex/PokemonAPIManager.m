//
//  PokemonAPIManager.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import "PokemonArrayBuilder.h"
#import "PokemonAPICommunicator.h"
#import "PokemonAPIManager.h"

@implementation PokemonAPIManager

- (void)fetchAllPokemon {
    [self.communicator fetchAllPokemon];
}

#pragma mark - PokemonAPICommunicatorDelegate method implementations

- (void)receivedAllPokemonJSON:(NSData *)objectNotation {
    NSError *error = nil;
    NSArray *allPokemon = [PokemonArrayBuilder pokemonArrayFromJSON:objectNotation error:&error];
    
    if (error != nil) {
        [self.delegate fetchingAllPokemonFailedWithError:error];
    } else {
        [self.delegate didReceiveAllPokemon:allPokemon];
    }
}

- (void)fetchingAllPokemonFailedWithError:(NSError *)error {
    [self.delegate fetchingAllPokemonFailedWithError:error];
}

@end
