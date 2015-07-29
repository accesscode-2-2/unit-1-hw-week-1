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
    NSURL *imageURL = [NSURL URLWithString:self.pokemonImageURI];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    self.pokemonImageView.image = [UIImage imageWithData:imageData];

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
