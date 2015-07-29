//
//  PokemonAPIManagerDelegate.h
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PokemonAPIManagerDelegate <NSObject>

- (void)didReceiveAllPokemon:(NSArray *)allPokemon;
- (void)fetchingAllPokemonFailedWithError:(NSError *)error;

@end
