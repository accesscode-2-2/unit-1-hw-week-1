//
//  PKTableViewController.m
//  Pokemon
//
//  Created by Daniel Distant on 7/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKTableViewController.h"
#import "PKViewController.h"

@interface PKTableViewController ()

@property (nonatomic) NSArray *pokemonData;

@end

@implementation PKTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pokemonData = @[
                         @"Bulbasaur",
                         @"Ivysaur",
                         @"Venusaur",
                         @"Charmander",
                         @"Charmeleon",
                         @"Charizard",
                         @"Squirtle",
                         @"Wartortle",
                         @"Blastoise",
                         @"Caterpie",
                         @"Metapod",
                         @"Butterfree",
                         @"Weedle",
                         @"Kakuna",
                         @"Beedrill",
                         @"Pidgey",
                         @"Pidgeotto",
                         @"Pidgeot",
                         @"Rattata",
                         @"Raticate",
                         @"Spearow",
                         @"Fearow",
                         @"Ekans",
                         @"Arbok",
                         @"Pikachu",
                         @"Raichu",
                         @"Sandshrew",
                         @"Sandslash",
                         @"Nidoran♀",
                         @"Nidorina",
                         @"Nidoqueen",
                         @"Nidoran♂",
                         @"Nidorino",
                         @"Nidoking",
                         @"Clefairy",
                         @"Clefable",
                         @"Vulpix",
                         @"Ninetales",
                         @"Jigglypuff",
                         @"Wigglytuff",
                         @"Zubat",
                         @"Golbat",
                         @"Oddish",
                         @"Gloom",
                         @"Vileplume",
                         @"Paras",
                         @"Parasect",
                         @"Venonat",
                         @"Venomoth",
                         @"Diglett",
                         @"Dugtrio",
                         @"Meowth",
                         @"Persian",
                         @"Psyduck",
                         @"Golduck",
                         @"Mankey",
                         @"Primeape",
                         @"Growlithe",
                         @"Arcanine",
                         @"Poliwag",
                         @"Poliwhirl",
                         @"Poliwrath",
                         @"Abra",
                         @"Kadabra",
                         @"Alakazam",
                         @"Machop",
                         @"Machoke",
                         @"Machamp",
                         @"Bellsprout",
                         @"Weepinbell",
                         @"Victreebel",
                         @"Tentacool",
                         @"Tentacruel",
                         @"Geodude",
                         @"Graveler",
                         @"Golem",
                         @"Ponyta",
                         @"Rapidash",
                         @"Slowpoke",
                         @"Slowbro",
                         @"Magnemite",
                         @"Magneton",
                         @"Farfetch'd",
                         @"Doduo",
                         @"Dodrio",
                         @"Seel",
                         @"Dewgong",
                         @"Grimer",
                         @"Muk",
                         @"Shellder",
                         @"Cloyster",
                         @"Gastly",
                         @"Haunter",
                         @"Gengar",
                         @"Onix",
                         @"Drowzee",
                         @"Hypno",
                         @"Krabby",
                         @"Kingler",
                         @"Voltorb",
                         @"Electrode",
                         @"Exeggcute",
                         @"Exeggutor",
                         @"Cubone",
                         @"Marowak",
                         @"Hitmonlee",
                         @"Hitmonchan",
                         @"Lickitung",
                         @"Koffing",
                         @"Weezing",
                         @"Rhyhorn",
                         @"Rhydon",
                         @"Chansey",
                         @"Tangela",
                         @"Kangaskhan",
                         @"Horsea",
                         @"Seadra",
                         @"Goldeen",
                         @"Seaking",
                         @"Staryu",
                         @"Starmie",
                         @"Mr. Mime",
                         @"Scyther",
                         @"Jynx",
                         @"Electabuzz",
                         @"Magmar",
                         @"Pinsir",
                         @"Tauros",
                         @"Magikarp",
                         @"Gyarados",
                         @"Lapras",
                         @"Ditto",
                         @"Eevee",
                         @"Vaporeon",
                         @"Jolteon",
                         @"Flareon",
                         @"Porygon",
                         @"Omanyte",
                         @"Omastar",
                         @"Kabuto",
                         @"Kabutops",
                         @"Aerodactyl",
                         @"Snorlax",
                         @"Articuno",
                         @"Zapdos",
                         @"Moltres",
                         @"Dratini",
                         @"Dragonair",
                         @"Dragonite",
                         @"Mewtwo",
                         @"Mew",
                         ];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSString *pokemonName = [self.pokemonData objectAtIndex:indexPath.row];
    NSString *temp = [pokemonName lowercaseString];
    temp = [temp stringByReplacingOccurrencesOfString:@"♀" withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"♂" withString:@"-f"];
    temp = [temp stringByReplacingOccurrencesOfString:@". " withString:@"-"];
    temp = [temp stringByReplacingOccurrencesOfString:@"'" withString:@""];
    UIImage *pokemonImage = [UIImage imageNamed: temp];
    PKViewController *PKVC = segue.destinationViewController;
    PKVC.pokemonName = pokemonName;
    PKVC.pokemonImage = pokemonImage;
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath NS_AVAILABLE_IOS(6_0) {
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //attempted to change highlight color, doesn't work yet
    
    tableView.sectionIndexTrackingBackgroundColor =  [UIColor colorWithRed:252/255.0f green:248/255.0f blue:201/255.0f alpha:1];
    return self.pokemonData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonIdentifier" forIndexPath:indexPath];
    
    //borders around cells
    
    cell.layer.borderWidth = 3.0f;
    cell.layer.cornerRadius = 10.0f;
    cell.layer.borderColor = [UIColor colorWithRed:95/255.0 green:155/255.0 blue:217/255.0 alpha:1].CGColor;
    
    //pokemon names
    
    NSString *pokemonNames = _pokemonData[indexPath.row];
    cell.textLabel.text = pokemonNames;
    
    //pokemon numbers in right detail
    
    NSString *pokemonNumber = [NSString stringWithFormat:@"no. %lu", indexPath.row + 1];
    cell.detailTextLabel.text = pokemonNumber;
    
    //pokemon images
    
    NSString *imageNames = [pokemonNames lowercaseString];
    imageNames = [imageNames stringByReplacingOccurrencesOfString:@"♀" withString:@""];
    imageNames = [imageNames stringByReplacingOccurrencesOfString:@"♂" withString:@"-f"];
    imageNames = [imageNames stringByReplacingOccurrencesOfString:@". " withString:@"-"];
    imageNames = [imageNames stringByReplacingOccurrencesOfString:@"'" withString:@""];
    cell.imageView.image = [UIImage imageNamed:imageNames];
    
    return cell;
}



@end
