//
//  ViewController.m
//  Pokemon
//
//  Created by Michael Kavouras on 7/26/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonMasterViewController.h"
#import "PokemonDetailViewController.h"
#import "PokemonList.h"

@interface PokemonMasterViewController ()

@end

@implementation PokemonMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    for (NSUInteger index = 0; index < self.pokemonImageViews.count; index++) {
        
        PokemonList *pokemonlist = [[PokemonList alloc]initWithIndex:index];
        
        UIImageView *pokemonlistImageView = self.pokemonImageViews[index];
        
        pokemonlistImageView.image = pokemonlist.pokemonIcon;
    }
}
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPokemonDetail"]) {
        
        UIImageView *pokemonlistImageView = (UIImageView *)[sender view];
        
        if ([self.pokemonImageViews containsObject:pokemonlistImageView]) {
            NSUInteger index = [self.pokemonImageViews indexOfObject:pokemonlistImageView];
            
            PokemonDetailViewController *pokemonDetailController = (PokemonDetailViewController *)segue.destinationViewController;
            
            
            pokemonDetailController.pokemonlist = [[PokemonList alloc] initWithIndex:index];
        };
        
        
        
        
        
    }
}

- (IBAction)showPokemonDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPokemonDetail" sender:sender];
}







@end
