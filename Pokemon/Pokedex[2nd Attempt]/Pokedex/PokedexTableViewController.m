//
//  PokedexTableViewController.m
//  Pokedex
//
//  Created by Eric Sze on 7/26/15.
//  Copyright (c) 2015 Eric Sze. All rights reserved.
//

#import "PokedexTableViewController.h"
#import "PokemonDetailTableViewController.h"
#import "Pokemon.h"

@interface PokedexTableViewController ()

@property (nonatomic) NSMutableDictionary *pokedex;

@end

@implementation PokedexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Pokemon Pokedex";
    
//    self.pokedex = [[NSMutableArray alloc] init];
//    
//    // initialize the data in self.countries
//    for (NSString *name in [Pokemon allPokemon]) {
//        Pokemon *pokemon = [[Pokemon alloc] init];
//        pokemon.name = name;
//        pokemon.imageURLString = [[name lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@"_"];
//        [self.pokedex addObject: pokemon];
//
//    }
//}
//
//    
//    
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    
//    // determine the section and row for our selected cell
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    
//    // retrieve the country from self.countries that corrosponds to
//    // the selected cell
//    Pokemon *pokemon = [self.pokedex objectAtIndex:indexPath.row];
//    
//    // access the destinationViewController
//    PokemonDetailTableViewController *vc = segue.destinationViewController;
//    
//    // set the country property on the destinationViewController
//    vc.pokedex = pokedex;
//}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSArray *types = [self.pokedex allKeys];
    return types.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *pokemonType = [self.pokedex allKeys];
    NSString *type = pokemonType[section];
    NSArray *pokemon = self.pokedex[type];
    return pokemon.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokedexIdentifier" forIndexPath:indexPath];
    
    NSArray *types = [self.pokedex allKeys];
    NSString *type = types[indexPath.section];
    NSArray *pokemon = [self.pokedex objectForKey:type];
    NSString *pokemonName = [pokemon objectAtIndex:indexPath.row];
    
    cell.textLabel.text = pokemonName;
    cell.imageView.image = [UIImage imageNamed:pokemonName];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *types = [self.pokedex allKeys];
    NSString *type = types[section];
    return type;
}

@end
