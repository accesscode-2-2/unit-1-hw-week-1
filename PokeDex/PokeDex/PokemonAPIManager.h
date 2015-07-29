//
//  PokemonAPIManager.h
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PokemonAPIManagerDelegate.h"
#import "PokemonAPICommunicatorDelegate.h"

@class PokemonAPICommunicator;

@interface PokemonAPIManager : NSObject

@property (strong, nonatomic) PokemonAPICommunicator *communicator;
@property (weak, nonatomic) id<PokemonAPIManagerDelegate> delegate;

- (void)fetchAllPokemon;

@end
