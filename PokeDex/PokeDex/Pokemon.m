
//
//  Pokemon.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

- (id)init {
    if (self = [super init]) {
        _propertyPrefix = PROPERTY_PREFIX;
    }
    return self;
}

// I want to make sure I make any name capitalization here and only once
- (void)setPoke_name:(NSString *)poke_name {
    _poke_name = [poke_name capitalizedString];
}

@end
