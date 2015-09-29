//
//  PokeDexTableViewController.m
//  Pokemon
//
//  Created by Kaisha Jones on 9/29/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "PokeDexTableViewController.h"

#import "PokemonDetailViewController.h"

@interface PokeDexTableViewController ()

@property (nonatomic) NSDictionary * allPokemon;
@property (nonatomic) NSMutableArray *allPokemonAlphabetized;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (nonatomic) BOOL showAllPokemon;


@end

@implementation PokeDexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.
    self.title = @"PokeDex";
    
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
    
    self.allPokemon = @{
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
    
    NSArray *keys = [self.allPokemon allKeys];
    NSString *key = keys[0];
    NSArray * array1 = [self.allPokemon objectForKey:key];
    
    self.allPokemonAlphabetized = [[NSMutableArray alloc] init];
    self.allPokemonAlphabetized = [array1 mutableCopy];
    
    for (int i = 1; i< [keys count]; i++) {
        [self.allPokemonAlphabetized addObjectsFromArray:[ self.allPokemon objectForKey:keys[i] ]];
        
    }
    
//    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:self.allPokemonAlphabetized];
//    self.allPokemonAlphabetized = [orderedSet array];
//    self.allPokemonAlphabetized = [self.allPokemonAlphabetized sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
//    
//    NSLog(@"%@", self.allPokemonAlphabetized);
//    
//    
    
    
}
- (IBAction)segmentedControlChanged:(UISegmentedControl *)sender {
    
    if(self.segmentedControl.selectedSegmentIndex == 0)
        
    {
        self.showAllPokemon = YES;
        [self.tableView reloadData];
        
    }
    
    else {
        self.showAllPokemon = NO;
        [self.tableView reloadData];
    }
    
}

//
//- (IBAction)segmentedControlChanged:(UISegmentedControl *)sender {
//    if(self.segmentedControl.selectedSegmentIndex == 0)  // this works but it won't let you click back and forth from your segmented controls    {
//
//        self.showAllPokemon = YES;
//        [self.tableView reloadData];
//
//    }
//
//    if(self.segmentedControl.selectedSegmentIndex == 1) {
//
//    }
//        self.showAllPokemon = NO;
//        [self.tableView reloadData];
//    }


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    if(self.showAllPokemon) {
        NSString * pokemonName = self.allPokemonAlphabetized[indexPath.row];
        PokemonDetailViewController *vc = segue.destinationViewController;
        
        vc.pokemonName = pokemonName;
    }
    
    else {
        
        
        NSArray * keys = [self.allPokemon allKeys];
        NSString *key = keys[indexPath.section];
        NSArray * pokemonArray = [self.allPokemon objectForKey:key];
        NSString * pokemonName = pokemonArray[indexPath.row];
        PokemonDetailViewController *vc = segue.destinationViewController;
        
        vc.pokemonName = pokemonName;
    }
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (self.showAllPokemon) {
        return @"A to Z";
    }
    else{
        
        NSArray *keys = [self.allPokemon allKeys];
        NSString * title = keys[section];
        
        return title;
    }
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (self.showAllPokemon) {
        return 1;
    }
    else{
        return [[self.allPokemon allKeys] count];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (self.showAllPokemon) {
        return [self.allPokemonAlphabetized count];
    }
    else{
        
        NSArray * keys = [self.allPokemon allKeys];
        
        NSString * key = keys[section];
        
        NSArray * pokemons = [self.allPokemon objectForKey:key];
        
        return [pokemons count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCellIdentifier" forIndexPath:indexPath];
    if (self.showAllPokemon) {
        NSString *pokemonName = self.allPokemonAlphabetized[indexPath.row];
        cell.textLabel.text = pokemonName;
        cell.imageView.image = [UIImage imageNamed:pokemonName];
        
        return cell;
        
        
    }
    else {
        NSArray * keys = [self.allPokemon allKeys];
        
        NSString * key = keys[indexPath.section];
        
        NSArray * pokemons = [self.allPokemon objectForKey:key];
        NSString *pokemonName =pokemons[indexPath.row];
        
        cell.textLabel.text = pokemonName;
        cell.imageView.image = [UIImage imageNamed:pokemonName];
   
        
        return cell;
    }
    
}



@end