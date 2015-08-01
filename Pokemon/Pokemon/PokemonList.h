//
//  PokemonList.h
//  Pokemon
//
//  Created by Brian Blanco on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PokemonList : NSObject

@property (strong, nonatomic) NSString *pokemonName;
@property (strong, nonatomic) NSString *pokemonDescription;
@property (strong, nonatomic) UIImage *pokemonIcon;
@property (strong, nonatomic) UIImage *pokemonIconLarge;
@property (strong, nonatomic) NSArray *pokemonType;


- (instancetype)initWithIndex:(NSUInteger)index;

@end
