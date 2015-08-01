//
//  PokemonTableViewController.m
//  Flags
//
//  Created by Michael Kavouras on 7/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonTableViewController.h"
#import "PokemonDetailViewController.h"
#import "Pokemons.h"

@interface PokemonTableViewController ()

@property (nonatomic) NSMutableArray *pokemon;

@end

@implementation PokemonTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Pokemon List";
    
    self.pokemon = [[NSMutableArray alloc] init];
    
    // initialize the data in self.pokemon
    for (NSString *name in [Pokemons allPokemon]) {
        Pokemons *pokemon = [[Pokemons alloc] init];
        pokemon.name = name;
        pokemon.imageURLString = [[name lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@"_"];
        [self.pokemon addObject:pokemon];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // determine the section and row for our selected cell
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    // retrieve the pokemon from self.pokemon that corrosponds to
    // the selected cell
    Pokemons *pokemon = [self.pokemon objectAtIndex:indexPath.row];
    
    // access the destinationViewController
    PokemonDetailViewController *vc = segue.destinationViewController;
    
    // set the pokemon property on the destinationViewController
    vc.pokemon = pokemon;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.pokemon.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCellIdentifier" forIndexPath:indexPath];
    
    Pokemons *pokemon = [self.pokemon objectAtIndex:indexPath.row];
    
    cell.textLabel.text = pokemon.name;
    cell.imageView.image = [pokemon image];
    
    return cell;
}

@end