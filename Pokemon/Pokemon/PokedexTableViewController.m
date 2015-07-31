//
//  PokedexTableViewController.m
//  Pokemon
//
//  Created by Jason Wang on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokedexTableViewController.h"
#import "DetailPokedexTableViewController.h"

@interface PokedexTableViewController ()

@property NSDictionary *pokemons;

@end

@implementation PokedexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    cell.textLabel.text = pokemonName;
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *types = [self.pokemons allKeys];
    NSString *type = types[section];
    return type;
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
