//
//  PDPokemon.h
//  Pokemon
//
//  Created by Mesfin Bekele Mekonnen on 7/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h> 

@interface PDPokemon : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSMutableArray *types;
@property (nonatomic) UIImage *image;
@property (nonatomic) NSArray *pokedex;
@property (nonatomic) NSMutableArray *abilities;


-(NSArray *)alphabetizedPokemon;
-(NSDictionary *)pokedexByType;
-(void)fetchFullPokedex:(void(^)(NSArray *, NSError *))responseHandler;
+(PDPokemon *)pokemonFromJSON:(NSDictionary *)dictionary;
+(UIImage *)pokemonImage:(PDPokemon *)pokemon;
//+(NSArray *)pokemonAbilities:(PDPokemon *)pokemon;

@end
