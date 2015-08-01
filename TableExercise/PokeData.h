//
//  PokeData.h
//  TableExercise
//
//  Created by Varindra Hart on 7/30/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PokeData : NSObject

@property (nonatomic) NSMutableArray *pokemonData_api;

-(void)fetchFullPokedex:(void(^)(NSArray *, NSError *))responseHandler ;
@end
