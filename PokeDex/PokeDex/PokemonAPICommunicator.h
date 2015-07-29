//
//  PokemonAPICommunicator.h
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PokemonAPICommunicatorDelegate;

@interface PokemonAPICommunicator : NSObject
@property (weak, nonatomic) id<PokemonAPICommunicatorDelegate> delegate;

- (void) fetchAllPokemon;

@end
