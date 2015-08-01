//
//  Pokemon.h
//  TableExercise
//
//  Created by Varindra Hart on 7/27/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface Pokemon : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger index;
@property (nonatomic) NSMutableArray *type;
@property (nonatomic) UIImage *picture;

-(instancetype) initWithPokemon:(Pokemon *)pokemon;
-(instancetype) initWithName:(NSString *)name forIndex:(NSInteger)index withType:(NSString *)type andPicture:(UIImage *)picture;
-(void) pokemonFromJSON:(NSDictionary *) dictionary;

@end
