//
//  PokemonTableViewController.m
//  Pokemon
//
//  Created by Artur Lan on 7/29/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//
#import "PokemonDetailViewController.h"
#import "PokemonTableViewController.h"
#import "PokemonArray.h"

@interface PokemonTableViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *Sorter;
@property (nonatomic) NSMutableArray *pokemons;
@end

@implementation PokemonTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Pokemon";
    
    self.pokemons = [[NSMutableArray alloc] init];
    
    for (NSString *namePokemon in [PokemonArray allPokemons]) {
        PokemonArray *poke = [[PokemonArray alloc] init];
        poke.namePokemon = namePokemon;
        poke.picturePokemonURL = [[namePokemon lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@"_"];
        [self.pokemons addObject:poke];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // determine the section and row for our selected cell
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    // retrieve the country from self.countries that corrosponds to
    // the selected cell
    PokemonArray *poke = [self.pokemons objectAtIndex:indexPath.row];
    
    // access the destinationViewController
    PokemonDetailViewController *vc = segue.destinationViewController;
    
    // set the country property on the destinationViewController
    vc.poke = poke;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.pokemons.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonIdentifier" forIndexPath:indexPath];
    
    
    
//    NSArray *sortedArray = [self.pokemons sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
//    NSString *sortedPokemon = [sortedArray objectAtIndex:indexPath.row];
//    
//    cell.textLabel.text = sortedPokemon;
//    cell.imageView.image = [UIImage imageNamed: sortedPokemon];
    
    
    PokemonArray *poke = [self.pokemons objectAtIndex:indexPath.row];
    
    cell.textLabel.text = poke.namePokemon;
    cell.imageView.image = [poke picturePokemon];

    
    return cell;
}


@end
