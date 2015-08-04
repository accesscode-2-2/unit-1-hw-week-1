//
//  PKViewController.m
//  Pokemon
//
//  Created by Christella on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKViewController.h"

@interface PKViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *pokemonImageView;
@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;



@end

@implementation PKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pokemonImageView.image = [self.pokeInDex image];
    self.pokemonNameLabel.text = [self.pokeInDex name];
    
    }

@end
