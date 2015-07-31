//
//  PKPokemonDetailViewController.m
//  Pokemon
//
//  Created by Ayuna Vogel on 7/29/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKPokemonDetailViewController.h"

@interface PKPokemonDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pokemonImageView;

@end

@implementation PKPokemonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pokemonNameLabel.text = self.pokemonName;
    self.pokemonImageView.image = [UIImage imageNamed:self.pokemonImageName];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
