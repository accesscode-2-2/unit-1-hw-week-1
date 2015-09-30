//
//  DetailViewController.m
//  Pokemon
//
//  Created by Umar on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DetailViewController.h"
#import "PokemonTableViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = self.pokemonName;
    
    NSString *imageName = [self.pokemonName lowercaseString];
    self.imageView.image = [UIImage imageNamed:imageName];
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
