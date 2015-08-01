//
//  Pokemons.h
//  Flags
//
//  Created by Michael Kavouras on 7/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Pokemons : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *imageURLString;

- (UIImage *)image;

+ (NSArray *)allPokemon;

@end
