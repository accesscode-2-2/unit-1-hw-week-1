//
//  PokemonDetailTableViewController.m
//  Pokedex
//
//  Created by Eric Sze on 7/30/15.
//  Copyright (c) 2015 Eric Sze. All rights reserved.
//

#import "PokemonDetailTableViewController.h"

@interface PokemonDetailTableViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *pImageView;
@property (weak, nonatomic) IBOutlet UILabel *pNameLabel;

@end

@implementation PokemonDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pImageView.image = [self.pokedex image];
    self.pNameLabel.text = self.pokedex.name;
}

@end
