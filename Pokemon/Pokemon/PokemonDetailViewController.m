//
//  PokemonDetailViewController.m
//  Pokemon
//
//  Created by Eric Sanchez on 9/21/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonDetailViewController.h"
@interface PokemonDetailViewController ()



@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PokemonDetailViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.nameLabel.text = self.pokemonName;
	NSString *imageName = [self.pokemonName lowercaseString];
	self.imageView.image = [UIImage imageNamed:imageName];
	self.navigationItem.title = self.pokemonName;
	
}

@end
