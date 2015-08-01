//
//  ViewControllerPokemonDisp.h
//  TableExercise
//
//  Created by Varindra Hart on 7/26/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pokemon.h"

@interface ViewControllerPokemonDisp : UIViewController
@property (nonatomic, copy) NSString *labelString;
@property (nonatomic, copy) NSString *urlString;
@property (nonatomic) Pokemon *pkmn;
@end
