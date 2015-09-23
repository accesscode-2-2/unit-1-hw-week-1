//
//  DetailPokedexViewController.m
//  Pokemon
//
//  Created by Jason Wang on 9/21/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "DetailPokedexViewController.h"

@interface DetailPokedexViewController ()
@property (strong, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@property (strong, nonatomic) IBOutlet UIImageView *pokemonImageView;

@end

@implementation DetailPokedexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pokemonNameLabel.text = self.pokemonName;
    self.pokemonImageView.image = self.pokemonPhoto;
}


@end
