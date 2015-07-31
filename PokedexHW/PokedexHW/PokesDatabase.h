//
//  PokesDatabase.h
//  PokedexHW
//
//  Created by Z on 7/30/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PokesDatabase : NSObject

@property (nonatomic) NSMutableDictionary *pokemon;
@property (nonatomic) NSArray *AZpokemon;

-(void)makeAllThePokes;

@end
