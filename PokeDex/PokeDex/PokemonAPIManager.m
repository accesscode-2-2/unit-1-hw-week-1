//
//  PokemonAPIManager.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

// This class initiates communication with the API using the Communicator class,
// and if it gets data back instead of an error, it uses the ArrayBuilder class
// to create an array of Pokemon. It then passes the array along.

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
    
    // call PokemonArrayBuilder method to create pokemon array
    NSArray *allPokemon = [PokemonArrayBuilder pokemonArrayFromJSON:objectNotation error:&error];
    
    // if error, handle it (log it)
    if (error != nil) {
        [self.delegate fetchingAllPokemonFailedWithError:error];
    // if not, pass the data
    } else {
        [self.delegate didReceiveAllPokemon:allPokemon];
    }
}

// log error
- (void)fetchingAllPokemonFailedWithError:(NSError *)error {
    [self.delegate fetchingAllPokemonFailedWithError:error];
}

@end
