//
//  Pokemon.m
//  TableExercise
//
//  Created by Varindra Hart on 7/27/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

-(instancetype) initWithName:(NSString *)name forIndex:(NSInteger)index withType:(NSString *)type andPicture:(UIImage *)picture{
    if (self = [super init]){
        self.name = [NSString stringWithString:name];
        self.index = index;
       // self.type = [NSString stringWithString:type];
       // self.picture = picture;
        
    }
    
    return self;
}

-(instancetype) initWithPokemon:(Pokemon *)pokemon{
    Pokemon *new = [[Pokemon alloc] init];
    new.name = [NSString stringWithString:pokemon.name];
    new.index = pokemon.index;
    //new.type = [NSString stringWithString:pokemon.type];
    new.picture = pokemon.picture;
    return new;
}


-(void) pokemonFromJSON:(NSDictionary *)dictionary{
    
    self.type = [[NSMutableArray alloc] init];
    
    self.name = [dictionary objectForKey:@"name"];
    self.type = [dictionary objectForKey:@"types"];
    NSURL *url = [NSURL URLWithString:[dictionary objectForKey:@"image_uri"]];
    NSData *data = [NSData dataWithContentsOfURL:url];
    self.picture =[UIImage imageWithData:data];
    self.index = [[dictionary objectForKey:@"id"] integerValue];
    
                 
    
}

@end
