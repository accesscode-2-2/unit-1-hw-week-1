//
//  PokemonAPICommunicatorDelegate.h
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PokemonAPICommunicatorDelegate <NSObject>

- (void)receivedAllPokemonJSON:(NSData *)objectNotation;
- (void)fetchingAllPokemonFailedWithError:(NSError *)error;

@end
