//
//  PDPokemon.m
//  Pokemon
//
//  Created by Mesfin Bekele Mekonnen on 7/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PDPokemon.h"
#import "AFNetworking.h"

@interface PDPokemon()

@property (nonatomic) NSString *image_uri;
@property (nonatomic) NSString *resource_uri;


@end

@implementation PDPokemon


-(void)fetchFullPokedex:(void(^)(NSArray *, NSError *))responseHandler {

    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc]init];
    
    NSString *url = @"http://c4q-pokedex.herokuapp.com/pokedex/all";
    
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSMutableArray *tmp = [NSMutableArray new];
        for (NSDictionary *pk in responseObject[@"pokedex"]) {
            PDPokemon *pokemon = [PDPokemon pokemonFromJSON:pk];
            
            NSString *firstCapChar = [[pokemon.name substringToIndex:1] capitalizedString];
            NSString *cappedString = [pokemon.name stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:firstCapChar];
            pokemon.name = cappedString;
            
            [tmp addObject:pokemon];
        }
        self.pokedex = tmp;
        
        responseHandler(responseObject[@"pokedex"], nil);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        responseHandler(nil, error);
    }];

}

-(NSArray *)alphabetizedPokemon {
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES selector:@selector(caseInsensitiveCompare:)];
    return [self.pokedex sortedArrayUsingDescriptors:@[sort]];
}

-(NSDictionary *)pokedexByType{
    NSMutableDictionary *dict = [NSMutableDictionary new];
    
    for(PDPokemon *pk in self.pokedex){
        for(NSString *type in pk.types){
            if([dict objectForKey:type] == nil){
                dict[type] = [NSMutableArray new];
            }
            NSMutableArray *typesArray = dict[type];
            [typesArray addObject:pk];
        }
    }
    return dict;
}

+(PDPokemon *)pokemonFromJSON:(NSDictionary *)dictionary{
    
    PDPokemon *pokemon = [[PDPokemon alloc]init];
    
    pokemon.types = [[NSMutableArray alloc]init];
    
    pokemon.name = [dictionary objectForKey:@"name"];
    pokemon.image_uri = [dictionary objectForKey:@"image_uri"];
    pokemon.resource_uri = [dictionary objectForKey:@"resource_uri"];
    pokemon.types = [dictionary objectForKey:@"types"];
    
    return pokemon;
}

+(UIImage *)pokemonImage:(PDPokemon *)pokemon{
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:pokemon.image_uri]]];
    
    pokemon.image = image;

    return image;
}

//Tried to parse the resources uri to pull out their abilities, but my abilities array is empty since the message (arrayWithContentsOfURL) I'm sending  is unable to parse the resources uri and store it's contents in an array. Probably because the resources JSON is not strictly an array but a mix.  


//+(NSArray *)pokemonAbilities:(PDPokemon *)pokemon{
//    NSURL *url = [NSURL URLWithString:pokemon.resource_uri];
//    NSMutableArray *abilities = [NSMutableArray arrayWithContentsOfURL:url];
//    
//    pokemon.abilities = abilities;
//    
//    return abilities;
//    
//}

@end
