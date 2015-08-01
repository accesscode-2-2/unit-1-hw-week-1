//
//  PKPokemonClickDetailsViewController.m
//  Pokemon
//
//  Created by Jamaal Sedayao on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKPokemonClickDetailsViewController.h"
#import "PKPokedexTableViewController.h"

@interface PKPokemonClickDetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pokemonImageView;

@end

@implementation PKPokemonClickDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.pokemonNameLabel.text = self.pokemonName;
    self.pokemonImageView.image = [UIImage imageNamed:_pokemonName];
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
