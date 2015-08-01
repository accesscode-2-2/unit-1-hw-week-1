//
//  PKPokemonTableTableViewController.m
//  Pokemon
//
//  Created by Ayuna Vogel on 7/29/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKPokemonTableTableViewController.h"
#import "PKPokemonDetailViewController.h"
#import "Pokemon.h"

@interface PKPokemonTableTableViewController ()

@property (nonatomic) NSMutableArray *pokemons;
@property (nonatomic) NSDictionary *pokemonTypes;

@end

@implementation PKPokemonTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *pokemonNames = @[
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
                      @"Mew"
                      ];
    

    NSArray *bug = @[
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
                     @"Cenonat",
                     @"Weedle"
                     ];
    
    NSArray *dragon = @[
                        @"Dragonair",
                        @"Dratini"
                        
                        
                        ];
    
    NSArray* electric = @[
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
                          
                          ];
    NSArray *fairy = @[
                       @"Clefable",
                       @"Clefairy",
                       @"Jigglypuff",
                       @"Mr-mime",
                       @"Wigglytuff"
                       ];
    NSArray* fire = @[
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
                      ];
    
    NSArray *fighting = @[
                          @"Hitmonchan",
                          @"Hitmonlee",
                          @"Machamp",
                          @"Machoke",
                          @"Machop",
                          @"Mankey",
                          @"Poliwrath",
                          @"Primeape"
                          
                          ];
    
    NSArray *flying = @[
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
                        
                        ];
    
    NSArray *ghost = @[
                       @"Gastly",
                       @"Gengar",
                       @"Haunter"
                       ];
    
    NSArray* grass =@[
                      @"Bellsprout",
                      @"Bulbasaur",
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
                      ];
    
    NSArray *ground = @[
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
                        ];
    NSArray *ice = @[
                     @"articuno",
                     @"cloyster",
                     @"dewgong",
                     @"jynx",
                     @"lapras"
                     ];
    
    NSArray *normal = @[
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
                        @"Meowth",
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
                        
                        ];
    
    NSArray *poison = @[
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
                        ];
    
    NSArray *psychic = @[
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
                         
                         
                         ];
    
    NSArray *rock = @[
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
                      
                      ];
    
    NSArray *steel = @[
                       @"Magnemite",
                       @"Magneton"
                       ];
    
    
    NSArray *water = @[
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
                       ];
    
    self.pokemonTypes = @{
                          @"Bug" : bug,
                          @"Dragon": dragon,
                          @"Electric" : electric,
                          @"Fairy" : fairy,
                          @"Fire" : fire,
                          @"Fighting" : fighting,
                          @"Flying" : flying,
                          @"Ghost" : ghost,
                          @"Grass" : grass,
                          @"Ground" : ground,
                          @"Ice" : ice,
                          @"Normal" : normal,
                          @"Poison" : poison,
                          @"Psychic" : psychic,
                          @"Rock" : rock,
                          @"Steel" : steel,
                          @"Water" : water
                          };
    
    self.pokemons = [NSMutableArray new];
    for (NSInteger i = 0; i < pokemonNames.count; i++) {
        Pokemon *littlePoke = [[Pokemon alloc]init];
        littlePoke.name = pokemonNames[i];
        //littlePoke.type = pokemonTypes[i]; //is not necessary at this moment since I don't have an array of types anymore
        littlePoke.imageName = [pokemonNames[i] lowercaseString];
        [self.pokemons addObject:littlePoke];
    }
    //[self.pokemons sortAlphabetically];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //asks the tableview which row was selected/tapped
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSArray *keysForTypes = [self.pokemonTypes allKeys];
    NSString *keyAtARowInASection = keysForTypes[indexPath.section];
    NSString *littlePoke = [self.pokemonTypes[keyAtARowInASection] objectAtIndex:indexPath.row];
    
    PKPokemonDetailViewController *vc = segue.destinationViewController;
    vc.pokemonName = littlePoke;
    NSString *imageName = [littlePoke lowercaseString];
    vc.pokemonImageName = imageName;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSArray *types = [self.pokemonTypes allKeys];
    return types.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *types = [self.pokemonTypes allKeys];
    NSString *type = types[section]; //1 key for every section
    NSArray *values = self.pokemonTypes[type]; //array of values in a key, rows in section
    return values.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonCellIdentifier" forIndexPath:indexPath];
    
    NSArray *types = [self.pokemonTypes allKeys];
    NSString *type = types[indexPath.section]; //NSString type is a string in an array of strings of types in a dictionary at a row.section, a loop basically
    NSArray *pokemonNamesOfPokeType = [self.pokemonTypes objectForKey:type];
    NSString *pokemonName = [pokemonNamesOfPokeType objectAtIndex:indexPath.row];
    cell.textLabel.text = pokemonName;

    NSString *imageName = [pokemonName lowercaseString];
    cell.imageView.image = [UIImage imageNamed:imageName];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *types = [self.pokemonTypes allKeys];
    NSString *type = types[section];
    return type;
}





// hook this action to your UISegmentedControl
- (void)segmentedControlDidChangeValue:(UISegmentedControl *)segmentedControl {
    if (segmentedControl.selectedSegmentIndex == 0) {
        // if selected segment is 0, we want to sort alphabetically
//        [self.pokemons sortAlphabetically];
    } else {
        // otherwise we want to sort by type
//        [self.pokemons sortByType];
    }
    
    [self.tableView reloadData];
}

- (void)sortByType {
    // in here, sort self.pokemons array by type
}

- (void)sortAlphabetically {
    
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
