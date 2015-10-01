//
//  DetailPokedexViewController.m
//  Pokemon
//
//  Created by Brian Blanco on 9/29/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@property (strong, nonatomic) IBOutlet UIImageView *pokemonImageView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pokemonNameLabel.text = self.pokemonName;
    self.pokemonImageView.image = self.pokemonPhoto;
}


@end
