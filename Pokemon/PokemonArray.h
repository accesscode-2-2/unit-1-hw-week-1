//
//  PokemonArray.h
//  Pokemon
//
//  Created by Kaisha Jones on 9/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//
// H = PUBLIC to be able to access it from a class

// our table view has a model which is a class

#import <Foundation/Foundation.h>

@interface PokemonArray : NSObject

@property (nonatomic) NSArray *aToZPokedex;
@property (nonatomic) NSDictionary *typePokedex;

- (void)initializeData;

@end
