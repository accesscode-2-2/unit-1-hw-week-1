//
//  PokeData.h
//  Pokemon
//
//  Created by Eric Sanchez on 9/24/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PokeData : NSObject
@property (nonatomic) NSArray *alphaPokemon;
@property (nonatomic) NSDictionary *typePokemon;

- (void) initializeData;

@end
