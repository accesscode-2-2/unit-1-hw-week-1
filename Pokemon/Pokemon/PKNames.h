//
//  PKNames.h
//  Pokemon
//
//  Created by Christella on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PKNames : NSObject

@property(nonatomic) NSString *name;
@property(nonatomic) NSString *ImageURLString;

- (UIImage *)image;

+ (NSArray *)allPokemon;


@end
