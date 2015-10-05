//
//  PKPokedex.h
//  InClassPokedex
//
//  Created by Christian Maldonado on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PKPokedex : NSObject

@property (nonatomic) NSArray *aToZPokemon;

@property (nonatomic) NSDictionary *typePokedex;
-(void)intializeData;

@end
