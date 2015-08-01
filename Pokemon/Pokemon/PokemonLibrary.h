//
//  PokemonLibrary.h
//  Pokemon
//
//  Created by Brian Blanco on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kName;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kType;


@interface PokemonLibrary : NSObject

@property (strong, nonatomic) NSArray *library;

@end
