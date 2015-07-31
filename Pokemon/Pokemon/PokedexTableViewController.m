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
                      @"bug" : @[
                              @"beedrill",
                              @"butterfree",
                              @"caterpie",
                              @"kakuna",
                              @"metapod",
                              @"paras",
                              @"parasect",
                              @"pinsir",
                              @"scyther",
                              @"venomoth",
                              @"venonat",
                              @"weedle"
                              ],
                      
                      @"dragon" : @[
                              @"dragonair",
                              @"dratini"
                              ],
                      
                      @"electric" : @[
                              @"abra",
                              @"aerodactyl",
                              @"alakazam",
                              @"arbok",
                              @"electabuzz",
                              @"electrode",
                              @"jolteon",
                              @"magnemite",
                              @"magneton",
                              @"pikachu",
                              @"raichu",
                              @"voltorb",
                              @"zapdos"
                              ],
                      
                      @"fairy" : @[
                              @"clefable",
                              @"clefairy",
                              @"jigglypuff",
                              @"mr-mime",
                              @"wigglytuff"
                              ],
                      
                      @"fire" : @[
                              @"arcanine",
                              @"charizard",
                              @"charmander",
                              @"charmeleon",
                              @"flareon",
                              @"growlithe",
                              @"magmar",
                              @"moltres",
                              @"ninetales",
                              @"ponyta",
                              @"rapidash",
                              @"vulpix"
                              ],
                      
                      @"fighting" : @[
                              @"hitmonchan",
                              @"hitmonlee",
                              @"machamp",
                              @"machoke",
                              @"machop",
                              @"mankey",
                              @"poliwrath",
                              @"primeape"
                              ],
                      
                      @"flying" : @[
                              @"aerodactyl",
                              @"articuno",
                              @"butterfree",
                              @"charizard",
                              @"dodrio",
                              @"doduo",
                              @"dragonite",
                              @"farfetchd",
                              @"fearow",
                              @"golbat",
                              @"gyarados",
                              @"moltres",
                              @"pidgeot",
                              @"pidgeotto",
                              @"pidgey",
                              @"scyther",
                              @"spearow",
                              @"zapdos",
                              @"zubat"
                              ],
                      
                      @"ghost" : @[
                              @"gastly",
                              @"gengar",
                              @"haunter"
                              ],
                      
                      @"grass" : @[
                              @"bellsprout",
                              @"bulbasaur",
                              @"exeggcute",
                              @"exeggutor",
                              @"gloom",
                              @"ivysaur",
                              @"oddish",
                              @"paras",
                              @"parasect",
                              @"tangela",
                              @"venusaur",
                              @"victreebel",
                              @"vileplume",
                              @"weepinbell"
                              ],
                      @"ground" : @[
                              @"cubone",
                              @"diglett",
                              @"dugtrio",
                              @"geodude",
                              @"golem",
                              @"graveler",
                              @"marowak",
                              @"nidoking",
                              @"nidoqueen",
                              @"onix",
                              @"rhydon",
                              @"rhyhorn",
                              @"sandshrew",
                              @"sandslash"
                              ],
                      @"ice" : @[
                              @"articuno",
                              @"cloyster",
                              @"dewgong",
                              @"jynx",
                              @"lapras"
                              ],
                      
                      @"normal" : @[
                              @"chansey",
                              @"ditto",
                              @"dodrio",
                              @"doduo",
                              @"eevee",
                              @"farfetchd",
                              @"fearow",
                              @"jigglypuff",
                              @"kangaskhan",
                              @"lickitung",
                              @"meowth",
                              @"persian",
                              @"pidgeot",
                              @"pidgeotto",
                              @"pidgey",
                              @"porygon",
                              @"ratatta",
                              @"raticate",
                              @"snorlax",
                              @"spearow",
                              @"tauros",
                              @"wigglytuff"
                              ],
                      
                      @"poison" : @[
                              @"arbok",
                              @"beedrill",
                              @"bellsprout",
                              @"bulbasaur",
                              @"ekans",
                              @"gastly",
                              @"gengar",
                              @"gloom",
                              @"golbat",
                              @"grimer",
                              @"haunter",
                              @"ivysaur",
                              @"kakuna",
                              @"koffing",
                              @"muk",
                              @"nidoking",
                              @"nidoqueen",
                              @"nidoran-f",
                              @"nidoran",
                              @"nidorina",
                              @"nidorino",
                              @"oddish",
                              @"tentacool",
                              @"tentacruel",
                              @"venomoth",
                              @"venonat",
                              @"venusaur",
                              @"victreebel",
                              @"vileplume",
                              @"weedle",
                              @"weepinbell",
                              @"weezing",
                              @"zubat"
                              ],
                      @"psychic" : @[
                              @"abra",
                              @"alakazam",
                              @"drowzee",
                              @"exeggcute",
                              @"exeggutor",
                              @"hypno",
                              @"jynx",
                              @"kadabra",
                              @"mew",
                              @"mewtwo",
                              @"mr-mime",
                              @"slowbro",
                              @"slowpoke"
                              ],
                      
                      @"rock" : @[
                              @"aerodactyl",
                              @"geodude",
                              @"golem",
                              @"graveler",
                              @"kabuto",
                              @"kabutops",
                              @"omanyte",
                              @"omastar",
                              @"onix",
                              @"rhydon",
                              @"rhyhorn"
                              ],
                      
                      @"steel" : @[
                              @"magnemite",
                              @"magneton"
                              ],
                      
                      @"water" : @[
                              @"blastoise",
                              @"cloyster",
                              @"dewgong",
                              @"goldeen",
                              @"golduck",
                              @"gyarados",
                              @"horsea",
                              @"kabuto",
                              @"kabutops",
                              @"kingler",
                              @"krabby",
                              @"lapras",
                              @"magikarp",
                              @"omanyte",
                              @"omastar",
                              @"poliwag",
                              @"poliwhirl",
                              @"poliwrath",
                              @"psyduck",
                              @"seadra",
                              @"seaking",
                              @"seel",
                              @"shellder",
                              @"slowbro",
                              @"slowpoke",
                              @"squirtle",
                              @"starmie",
                              @"staryu",
                              @"tentacool",
                              @"tentacruel",
                              @"vaporeon",
                              @"wartortle"
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
