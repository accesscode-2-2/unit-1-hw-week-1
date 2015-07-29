//
//  PokeDexDetailViewController.h
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PokeDexDetailViewController : UIViewController

@property (nonatomic) NSString *pokemonName;
@property (nonatomic) NSUInteger pokemonID;
@property (nonatomic) NSString *pokemonImageURI;
@property (nonatomic) NSArray *pokemonTypes;
@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pokemonImageView;

@end
