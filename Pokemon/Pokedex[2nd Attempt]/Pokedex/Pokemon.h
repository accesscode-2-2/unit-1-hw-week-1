//
//  Pokemon.h
//  Pokedex
//
//  Created by Eric Sze on 7/31/15.
//  Copyright (c) 2015 Eric Sze. All rights reserved.
//

//#ifndef Pokedex_Header_h
//#define Pokedex_Header_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Pokemon : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *imageURLString;

- (UIImage *)image;

+ (NSDictionary *)allPokemon;

@end

//#endif
