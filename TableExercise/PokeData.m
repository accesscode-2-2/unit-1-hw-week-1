//
//  PokeData.m
//  TableExercise
//
//  Created by Varindra Hart on 7/30/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import "PokeData.h"
#import "Pokemon.h"
#import "AFNetworking.h"

@implementation PokeData

-(void)fetchFullPokedex:(void(^)(NSArray *, NSError *))responseHandler {
    {
        AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc]init];
        
        NSString *url = @"http://c4q-pokedex.herokuapp.com/pokedex/all";
        
        [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
            
            NSMutableArray *tmp = [NSMutableArray new];
            for (NSDictionary *pk in responseObject[@"pokedex"]) {
                
                Pokemon *pokemon = [[Pokemon alloc] init];
                [pokemon pokemonFromJSON:pk];
                
                NSString *firstCapChar = [[pokemon.name substringToIndex:1] capitalizedString];
                NSString *cappedString = [pokemon.name stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:firstCapChar];
                pokemon.name = cappedString;
                
                [tmp addObject:pokemon];
            }
            self.pokemonData_api = [[NSMutableArray alloc] initWithArray:tmp];
            
            responseHandler(responseObject[@"pokedex"], nil);
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            responseHandler(nil, error);
        }];

        
    }
}
@end
