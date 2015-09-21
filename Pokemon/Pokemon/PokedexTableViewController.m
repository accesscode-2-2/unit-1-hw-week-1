//
//  PokedexTableViewController.m
//  Pokemon
//
//  Created by Jason Wang on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokedexTableViewController.h"
#import "DetailPokedexViewController.h"

@interface PokedexTableViewController ()

@property NSDictionary *pokemons;

@end

@implementation PokedexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Pokemon";
    self.pokemons = @{
                      @"Bug" : @[
                              @"Beedrill",
                              @"Butterfree",
                              @"Caterpie",
                              @"Kakuna",
                              @"Metapod",
                              @"Paras",
                              @"Parasect",
                              @"Pinsir",
                              @"Scyther",
                              @"Venomoth",
                              @"Venonat",
                              @"Weedle"
                              ],
                      
                      @"Dragon" : @[
                              @"Dragonair",
                              @"Dratini"
                              ],
                      
                      @"Electric" : @[
                              @"Abra",
                              @"Aerodactyl",
                              @"Alakazam",
                              @"Arbok",
                              @"Electabuzz",
                              @"Electrode",
                              @"Jolteon",
                              @"Magnemite",
                              @"Magneton",
                              @"Pikachu",
                              @"Raichu",
                              @"Voltorb",
                              @"Zapdos"
                              ],
                      
                      @"Fairy" : @[
                              @"Clefable",
                              @"Clefairy",
                              @"Jigglypuff",
                              @"Mr-mime",
                              @"Wigglytuff"
                              ],
                      
                      @"Fire" : @[
                              @"Arcanine",
                              @"Charizard",
                              @"Charmander",
                              @"Charmeleon",
                              @"Flareon",
                              @"Growlithe",
                              @"Magmar",
                              @"Moltres",
                              @"Ninetales",
                              @"Ponyta",
                              @"Rapidash",
                              @"Vulpix"
                              ],
                      
                      @"Fighting" : @[
                              @"Hitmonchan",
                              @"Hitmonlee",
                              @"Machamp",
                              @"Machoke",
                              @"Machop",
                              @"Mankey",
                              @"Poliwrath",
                              @"Primeape"
                              ],
                      
                      @"Flying" : @[
                              @"Aerodactyl",
                              @"Articuno",
                              @"Butterfree",
                              @"Charizard",
                              @"Dodrio",
                              @"Doduo",
                              @"Dragonite",
                              @"Farfetchd",
                              @"Fearow",
                              @"Golbat",
                              @"Gyarados",
                              @"Moltres",
                              @"Pidgeot",
                              @"Pidgeotto",
                              @"Pidgey",
                              @"Scyther",
                              @"Spearow",
                              @"Zapdos",
                              @"Zubat"
                              ],
                      
                      @"Ghost" : @[
                              @"Hastly",
                              @"Gengar",
                              @"Haunter"
                              ],
                      
                      @"Grass" : @[
                              @"Bellsprout",
                              @"Bulbasaur",
                              @"Exeggcute",
                              @"Exeggutor",
                              @"Gloom",
                              @"Ivysaur",
                              @"Oddish",
                              @"Paras",
                              @"Parasect",
                              @"Tangela",
                              @"Venusaur",
                              @"Victreebel",
                              @"Vileplume",
                              @"Weepinbell"
                              ],
                      @"Ground" : @[
                              @"Cubone",
                              @"Diglett",
                              @"Dugtrio",
                              @"Geodude",
                              @"Golem",
                              @"Graveler",
                              @"Marowak",
                              @"Nidoking",
                              @"Nidoqueen",
                              @"Onix",
                              @"Rhydon",
                              @"Rhyhorn",
                              @"Sandshrew",
                              @"Sandslash"
                              ],
                      @"Ice" : @[
                              @"Articuno",
                              @"Cloyster",
                              @"Dewgong",
                              @"Jynx",
                              @"Lapras"
                              ],
                      
                      @"Normal" : @[
                              @"Chansey",
                              @"Ditto",
                              @"Dodrio",
                              @"Doduo",
                              @"Eevee",
                              @"Farfetchd",
                              @"Fearow",
                              @"Jigglypuff",
                              @"Kangaskhan",
                              @"Lickitung",
                              @"Neowth",
                              @"Persian",
                              @"Pidgeot",
                              @"Pidgeotto",
                              @"Pidgey",
                              @"Porygon",
                              @"Ratatta",
                              @"Raticate",
                              @"Snorlax",
                              @"Spearow",
                              @"Tauros",
                              @"Wigglytuff"
                              ],
                      
                      @"Poison" : @[
                              @"Arbok",
                              @"Beedrill",
                              @"Bellsprout",
                              @"Bulbasaur",
                              @"Ekans",
                              @"Gastly",
                              @"Gengar",
                              @"Gloom",
                              @"Golbat",
                              @"Grimer",
                              @"Haunter",
                              @"Ivysaur",
                              @"Kakuna",
                              @"Koffing",
                              @"Muk",
                              @"Nidoking",
                              @"Nidoqueen",
                              @"Nidoran-f",
                              @"Nidoran",
                              @"Nidorina",
                              @"nNidorino",
                              @"Oddish",
                              @"Tentacool",
                              @"Tentacruel",
                              @"Venomoth",
                              @"Venonat",
                              @"Venusaur",
                              @"Victreebel",
                              @"Vileplume",
                              @"Weedle",
                              @"Weepinbell",
                              @"Weezing",
                              @"Zubat"
                              ],
                      @"Psychic" : @[
                              @"Abra",
                              @"Alakazam",
                              @"Drowzee",
                              @"Exeggcute",
                              @"Exeggutor",
                              @"Hypno",
                              @"Jynx",
                              @"Kadabra",
                              @"Mew",
                              @"Mewtwo",
                              @"Mr-mime",
                              @"Slowbro",
                              @"Slowpoke"
                              ],
                      
                      @"Rock" : @[
                              @"Aerodactyl",
                              @"Geodude",
                              @"Golem",
                              @"Graveler",
                              @"Kabuto",
                              @"Kabutops",
                              @"Omanyte",
                              @"Omastar",
                              @"Onix",
                              @"Rhydon",
                              @"Rhyhorn"
                              ],
                      
                      @"Steel" : @[
                              @"Magnemite",
                              @"Magneton"
                              ],
                      
                      @"Water" : @[
                              @"Blastoise",
                              @"Cloyster",
                              @"Dewgong",
                              @"Goldeen",
                              @"Golduck",
                              @"Gyarados",
                              @"Horsea",
                              @"Kabuto",
                              @"Kabutops",
                              @"Kingler",
                              @"Krabby",
                              @"Lapras",
                              @"Magikarp",
                              @"Omanyte",
                              @"Omastar",
                              @"Poliwag",
                              @"Poliwhirl",
                              @"Poliwrath",
                              @"Psyduck",
                              @"Seadra",
                              @"Seaking",
                              @"Seel",
                              @"Shellder",
                              @"Slowbro",
                              @"Slowpoke",
                              @"Squirtle",
                              @"Starmie",
                              @"Staryu",
                              @"Tentacool",
                              @"Tentacruel",
                              @"Vaporeon",
                              @"Wartortle"
                              ],
                      };


}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSArray *types = [self.pokemons allKeys];
    return types.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *typesOfAllPokemons = [self.pokemons allKeys];
    NSString *type = typesOfAllPokemons[section];
    NSArray *pokemonOfThisType = self.pokemons[type];
    
    return pokemonOfThisType.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokedexIdentifier" forIndexPath:indexPath];
    
    NSArray *types = [self.pokemons allKeys];
    NSString *type = types[indexPath.section];
    NSArray *arrayOfPokemons = [self.pokemons objectForKey:type];
    NSString *pokemonName = [arrayOfPokemons objectAtIndex:indexPath.row];
    NSString *imageName = pokemonName.lowercaseString;
    cell.textLabel.text = pokemonName;
    cell.imageView.image = [UIImage imageNamed:imageName];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *types = [self.pokemons allKeys];
    NSString *type = types[section];
    return type;
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    UITableViewCell *cell = sender;
    
    DetailPokedexViewController *viewController = [segue destinationViewController];
    viewController.pokemonName = cell.textLabel.text;
    viewController.pokemonPhoto = cell.imageView.image;
}


@end
