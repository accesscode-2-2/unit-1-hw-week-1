//
//  PKTableView.m
//  Pokemon
//
//  Created by Shena Yoshida on 7/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKTableViewController.h"
#import "PokemonFactsViewController.h"


@interface PKTableViewController ()


@property (nonatomic) NSDictionary* pokemonList;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl; // outlet for button
// @property   (nonatomic) BOOL *showAllPokemon; // new property for button bool


@end

@implementation PKTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];

    
    // this changes the root view controller heading title
    self.title = @"Pokemon";
    
  //  self.showAllPokemon = NO; // I will need this for the button
    
    // create arrays of pokemon sorted by type
    NSArray *bug = @[
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
                     ];
    
    NSArray *dragon = @[
                        @"dragonair",
                        @"dratini"
                        
                        
                        ];
    
    NSArray* electric = @[
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
                          
                          ];
    NSArray *fairy = @[
                       @"clefable",
                       @"clefairy",
                       @"jigglypuff",
                       @"mr-mime",
                       @"wigglytuff"
                       ];
    NSArray* fire = @[
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
                      ];
    
    NSArray *fighting = @[
                          @"hitmonchan",
                          @"hitmonlee",
                          @"machamp",
                          @"machoke",
                          @"machop",
                          @"mankey",
                          @"poliwrath",
                          @"primeape"
                          
                          ];
    
    NSArray *flying = @[
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
                        ];
    
    NSArray *ghost = @[
                       @"gastly",
                       @"gengar",
                       @"haunter"
                       ];
    
    NSArray* grass =@[
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
                        @"nidoran (f)",
                        @"nidoran (m)",
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
                       @"magnemite",
                       @"magneton"
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
    
    // create keys for each type of pokemon array
    self.pokemonList = @{
                         @"Bug"      : bug,
                         @"Dragon"   : dragon,
                         @"Electric" : electric,
                         @"Fairy"    : fairy,
                         @"Fire"     : fire,
                         @"Fighting" : fighting,
                         @"Flying"   : flying,
                         @"Ghost"    : ghost,
                         @"Grass"    : grass,
                         @"Ground"   : ground,
                         @"Ice"      : ice,
                         @"Normal"   : normal,
                         @"Poison"   : poison,
                         @"Psychic"  : psychic,
                         @"Rock"     : rock,
                         @"Steel"    : steel,
                         @"Water"    : water
                         };
}

// ths code connects the button
//- (IBAction) segmentedControlChanged:(UISegmentedControl *)sender {
//    if(self.segmentedControl.selectedSegmentIndex == 0)
//    {
//        self.showAllPokemon = NO;
//        [self.tableView reloadData];
//    } else {
//        self.showAllPokemon = YES;
//        [self.tableView reloadData];
//    }
//
//}

// connect this main table view to the one that appears when the user clicks on each pokemon
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NSArray *keys = [self.pokemonList allKeys];
    NSString *key = keys[indexPath.section];
    NSArray *pokemonArray = [self.pokemonList objectForKey:key];
    NSString *pokemonName = pokemonArray[indexPath.row];
    PokemonFactsViewController *vc = segue.destinationViewController;
    vc.pokemonName = pokemonName;
}

// create the number of sections (ie: one giant list of pokemon or individual lists for each type)
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSArray *keys = [self.pokemonList allKeys];
    return keys.count; // or: return [self.pokemonList allKeys].count
}

// create the number of rows in each section (ie: collect all water pokemon rows into one grouped section)
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // list keys in dictionary
    NSArray *keys = [self.pokemonList allKeys];
    NSString *key = keys[section];
    NSArray *pokemons = [self.pokemonList objectForKey:key];
    return [pokemons count];
}

// add headings for each key/section
- (NSString *)tableView: (UITableView *) tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *keys = [self.pokemonList allKeys];
    NSString *key = keys[section];
    return key;
}

// "dequeueReusableCell...." only activates enough cells to appear on the screen at one time (ie: it won't show you all 10,000,000 songs in your iTunes library) so you can scroll really fast!
// I also named identifier "pokemonCellIdentifier" and connected it to my view controller.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCellIdentifier" forIndexPath:indexPath];
    
    // add pokemon names to uitableview
    NSArray *keys = [self.pokemonList allKeys]; // get the keys in an array
    NSString *key = keys[indexPath.section]; // get key in a string
    NSArray *arrayOfPokemonNames = [self.pokemonList objectForKey:key];
    NSString *pokemonName = [arrayOfPokemonNames objectAtIndex:indexPath.row];
    cell.textLabel.text = pokemonName; // now we can see all of the pokemon names
    
    // we match and add the image to the view
    pokemonName = pokemonName.lowercaseString; // this converts the pokemon to lowercase strings
    UIImage *pokemonImage = [UIImage imageNamed:pokemonName];
    cell.imageView.image = pokemonImage;
    return cell;
}

// add alphabetical navigation bar to the side of the tableview
- (NSArray *) sectionIndexTitlesForTableView:(UITableView *)tableView {
    return[NSArray arrayWithObjects:@"A ", @"B ", @"C ", @"D ", @"E ", @"F ", @"G ", @"H ", @"I ", @"J ", @"K ", @"L ", @"M ", @"N ", @"O ", @"P ", @"Q ", @"R ", @"S ", @"T ", @"U ", @"V ", @"W ", @"X ", @"Y ", @"Z ", nil];
}

// this is the second part that
//- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {

//    NSArray *keys = [self.pokemonList allKeys];
////    NSString *key = keys[section];
//    NSArray *pokemons = [self.pokemonList objectForKey:keys];
//    return [pokemons count];

    //return <yourSectionIndexForTheSectionForSectionIndexTitle >;
    
//}

@end
