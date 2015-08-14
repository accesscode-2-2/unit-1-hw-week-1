//
//  Pokemon.m
//  Pokemon
//
//  Created by Justine Gartner🙏🏼 on 7/29/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

-(NSString *)createImageNameWith: (NSString *)pokemonName {
    
    NSString *lowercaseName = [pokemonName lowercaseString];
    NSString *farFetchdName = [lowercaseName stringByReplacingOccurrencesOfString:@"'" withString:@""];
    NSString *mrMimeName = [farFetchdName stringByReplacingOccurrencesOfString:@". " withString:@"-"];
    NSString *nidoranFemaleName = [mrMimeName stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    NSString *nidoranFemale2Name = [nidoranFemaleName stringByReplacingOccurrencesOfString:@"(" withString:@""];
    NSString *pokeImageName = [nidoranFemale2Name stringByReplacingOccurrencesOfString:@")" withString:@""];
    
    return pokeImageName;
}

+ (NSInteger)numberOfTypes:(NSArray *)pokemon {
    
    NSMutableArray *types = [NSMutableArray new];
    
    for(Pokemon *pk in pokemon){
        
        //To understand what is happening in this loop:
        //NSLog(@"%lu", [types indexOfObject:pk.type]);
        
        if ([types indexOfObject:pk.type] == NSNotFound) {
            
            [types addObject:pk.type];
        
        }
    
    }
    
    return types.count;
}


//I created the following method on my own, and although I understand how it works abstractly, it's a little fuzzy to me how each part of the syntax works
//Hence I've messed around a bit with nslogging and break points
+ (NSInteger)numberOfPokemonOfEachType:(NSArray *)pokemon{
    
    NSMutableDictionary *pokemonByType = [NSMutableDictionary new];
    NSMutableArray *typesArray = [NSMutableArray new];
    NSMutableArray *namesOfEachType = [NSMutableArray new];
    
    //For each pokemon in the tableData, find the unique types and make an array of them
    for (Pokemon *pk in pokemon) {
        
        if ([typesArray indexOfObject:pk.type] == NSNotFound) {
            
            [typesArray addObject:pk.type];
            
            //NSLog(@"%@", typesArray);
        
        }
        
        //for each type find the names that correspond with them and make an array of them
        for (NSArray *types in typesArray) {
        
            if ([pokemonByType objectForKey:types] == nil) {
                
                pokemonByType[types] = [NSMutableArray new];
                
                //NSLog(@"%@", pokemonByType);
            
            }
        
            namesOfEachType = pokemonByType[types];
            [namesOfEachType addObject:pk];
            
            //NSLog(@"%@", namesOfEachType);
            
        }
    }
    
    return namesOfEachType.count;
}

@end
