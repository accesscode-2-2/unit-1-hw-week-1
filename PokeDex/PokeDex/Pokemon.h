//
//  Pokemon.h
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokemon : NSObject

@property (nonatomic) NSUInteger id;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *image_uri;
@property (nonatomic) NSString *resource_uri;
@property (nonatomic) NSMutableArray *types;

@end
