//
//  PokedexTableViewController.m
//  Pokedex
//
//  Created by Eric Sze on 7/26/15.
//  Copyright (c) 2015 Eric Sze. All rights reserved.
//

#import "PokedexTableViewController.h"
#import "PokemonDetailTableViewController.h"

@interface PokedexTableViewController ()


@property (nonatomic) NSDictionary *pokedex;
@property (nonatomic) NSMutableArray *pokemonAToZ;
@property (nonatomic) BOOL showAllPokemon;

@end

@implementation PokedexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Pokedex";
    self.showAllPokemon = YES;
    
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
    
    NSArray* grass = @[
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
    
    self.pokedex = @{
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

    NSArray *keys = [self.pokedex allKeys];
    NSString *key = keys[0];
    NSArray * array1 = [self.pokedex objectForKey:key];
    
    self.pokemonAToZ = [[NSMutableArray alloc] init];
    self.pokemonAToZ = [array1 mutableCopy];
    
    for (int i = 1; i < [keys count]; i++) {
        [self.pokemonAToZ addObjectsFromArray:[ self.pokedex objectForKey:keys[i] ]];
        
    }
    
    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:self.pokemonAToZ];
    self.pokemonAToZ = [orderedSet array];
    self.pokemonAToZ = [self.pokemonAToZ sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
}

//- (IBAction)segmentedControlSwitch:(id)sender {
//    if(self.segmentedControl.selectedSegmentIndex == 0){
//        self.showAllPokemon = YES;
//        [self.tableView reloadData];
//    } else {
//        self.showAllPokemon = NO;
//        [self.tableView reloadData];
//    }
//}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    
//    if(self.showAllPokemon) {
//        NSString *pokemonName = self.pokemonAToZ[indexPath.row];
//        PokemonDetailTableViewController *vc = segue.destinationViewController;
//        
//        vc.pokedex = pokemonName;
//        
//    } else {
//        NSArray * keys = [self.pokemonAToZ allKeys];
//        NSString *key = keys[indexPath.section];
//        NSArray * pokemonArray = [self.allPokemon objectForKey:key];
//        NSString * pokemonName = pokemonArray[indexPath.row];
//        PokemonDetailTableViewController *vc = segue.destinationViewController;
//        
//        vc.pokedex = pokemonName;
//    }


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
