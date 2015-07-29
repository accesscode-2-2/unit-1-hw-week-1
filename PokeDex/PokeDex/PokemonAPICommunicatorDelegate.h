//
//  PokemonAPICommunicatorDelegate.h
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

// This particular delegate pattern I took from an API example lesson I did.
// It worked well there, so I decided to adapt it to the homework. As I understand it
// it allows the TableViewController and the Communicator and Manager classes to
// interact without knowing jack squat about how their specific implementation works

// http://www.appcoda.com/fetch-parse-json-ios-programming-tutorial/

// I'm sure there's a simpler way to do it without delegates, and I'm not gonna pretend
// I understand 100 percent how all the delegation works, but since two days ago I knew
// jack squat about how to hook up JSON and objective c, and now I've built two API apps in
// two days, using this pattern, I just decided to stick to it.

#import <Foundation/Foundation.h>

@protocol PokemonAPICommunicatorDelegate <NSObject>

- (void)receivedAllPokemonJSON:(NSData *)objectNotation;
- (void)fetchingAllPokemonFailedWithError:(NSError *)error;

@end
