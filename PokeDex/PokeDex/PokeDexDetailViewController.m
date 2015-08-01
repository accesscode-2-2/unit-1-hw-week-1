//
//  PokeDexDetailViewController.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import "PokeDexDetailViewController.h"

@interface PokeDexDetailViewController ()

@end

@implementation PokeDexDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pokemonNameLabel.text = self.pokemonName;
    self.pokemonImageView.image = self.pokemonImage;

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
