//
//  PokemonAPICommunicator.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import "PokemonAPICommunicator.h"
#import "PokemonAPICommunicatorDelegate.h"

@implementation PokemonAPICommunicator

- (void)fetchAllPokemon {
    NSString *urlAsString = [NSString stringWithFormat:@"http://c4q-pokedex.herokuapp.com/pokedex/all"];
    NSURL *url = [[NSURL alloc] initWithString:urlAsString];
    
    // attempt to connect
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:url]
                                       queue:[[NSOperationQueue alloc] init]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                               if (error) {
                                   [self.delegate fetchingAllPokemonFailedWithError:error];
                               } else {
                                   [self.delegate receivedAllPokemonJSON:data];
                               }
                           }];
}


@end
