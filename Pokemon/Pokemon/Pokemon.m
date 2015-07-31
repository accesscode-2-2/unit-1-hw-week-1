//
//  Pokemon.m
//  Pokemon
//
//  Created by Justine Gartner on 7/29/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

+ (NSInteger)numberOfTypes:(NSArray *)pokemon {
    NSMutableArray *types = [NSMutableArray new];
    for(Pokemon *pk in pokemon){
        //NSLog(@"%lu", [types indexOfObject:pk.type]);
        if ([types indexOfObject:pk.type] == NSNotFound) {
            [types addObject:pk.type];
        }
    }
    
    return types.count;
}

@end
