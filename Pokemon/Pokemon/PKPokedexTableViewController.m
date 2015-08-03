//
//  PKPokedexTableViewController.m
//  Pokemon
//
//  Created by Jamaal on 7/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKPokedexTableViewController.h"
#import "PKPokemonClickDetailsViewController.h"

@interface PKPokedexTableViewController ()

@property (nonatomic) NSDictionary *pokemon;
@property (nonatomic) NSMutableArray *allPokemonAtoZ;
@property (nonatomic) BOOL showAllPokemon;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (nonatomic) NSArray *pokemonIndexAtoZ;
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView;

@end

@implementation PKPokedexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pokemonIndexAtoZ = [NSArray arrayWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z", nil];
    
    
    
    self.title = @"Ash's Pokedex";

    self.showAllPokemon = NO;
    
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
    
    
    
    
    self.pokemon = @{
                     @"bug"      : bug,
                     @"dragon"   : dragon,
                     @"electric" : electric,
                     @"fairy"    : fairy,
                     @"fighting" : fighting,
                     @"fire"     : fire,
                     @"flying"   : flying,
                     @"ghost"    :  ghost,
                     @"grass"    : grass,
                     @"ground"   : ground,
                     @"ice"      : ice,
                     @"normal"   : normal,
                     @"poison"   : poison,
                     @"psychic"  : psychic,
                     @"rock"     : rock,
                     @"steel"    : steel,
                     @"water"    : water,
                     };
    
    NSArray *keys = [self.pokemon allKeys];
    NSString *key = keys[0];
    NSArray *pokeArray = [self.pokemon objectForKey: key];
    
    self.allPokemonAtoZ = [[NSMutableArray alloc]init];
    self.allPokemonAtoZ = [pokeArray mutableCopy];
    
    for (int i = 1; i < [keys count]; i++){
        [self.allPokemonAtoZ addObjectsFromArray:[self.pokemon objectForKey:keys[i]]];
    }
    
    NSOrderedSet *alphabetized = [NSOrderedSet orderedSetWithArray:self.allPokemonAtoZ];
    self.allPokemonAtoZ = [alphabetized array];
    self.allPokemonAtoZ = [self.allPokemonAtoZ sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
}

#pragma mark - Table view data source

- (IBAction)segmentControlSelected:(UISegmentedControl *)sender {
    if (self.segmentControl.selectedSegmentIndex == 0)
    {
        self.showAllPokemon = NO;
        [self.tableView reloadData];
    } else {
        
        self.showAllPokemon = YES;
        [self.tableView reloadData];
    }
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    if(self.showAllPokemon){
        return _pokemonIndexAtoZ;
    } else {
        return nil;
    }
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    if (self.showAllPokemon){
        NSString *pokemonName = self.allPokemonAtoZ [indexPath.row];
        PKPokemonClickDetailsViewController *detailView = segue.destinationViewController;
        detailView.pokemonName = pokemonName;
    } else {
        NSArray *keys = [self.pokemon allKeys];
        NSString *key = keys[indexPath.section];
        NSArray *pokemonArray = [self.pokemon objectForKey:key];
        NSString *pokemonName = pokemonArray[indexPath.row];
        PKPokemonClickDetailsViewController *detailView = segue.destinationViewController;
        detailView.pokemonName = pokemonName;
    }
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (self.showAllPokemon){
        return 1;
    } else {
    NSArray *keys = [self.pokemon allKeys];
    return keys.count;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (self.showAllPokemon){
        return [self.allPokemonAtoZ count];
    } else {
    NSArray *keys = [self.pokemon allKeys];
    NSString *key = keys[section];
    NSArray *values = self.pokemon[key];
    return values.count;
    }
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    
//    NSArray * keys = [self.pokemonList allKeys];
//    NSString *key = keys[indexPath.section];
//    NSArray * pokemonArray = [self.pokemonList objectForKey:key];
//    NSString * pokemonName = pokemonArray[indexPath.row];
//    PokemonFactsViewController *vc = segue.destinationViewController;
//    vc.pokemonName = pokemonName;
//}
//
//- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    
//    NSArray *keys = [self.pokemon allKeys];
//    NSString *key = keys[indexPath.section];
//    NSArray *pokemonArray = [self.pokemon objectForKey:key];
//    NSString *pokemonName = pokemonArray[indexPath.row];
//    
//    PKPokemonClickDetailsViewController *vc = segue.destinationViewController;
//    vc.pokemonName = pokemonName;
//    
//
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    if (self.showAllPokemon){
        NSString *pokemonName = self.allPokemonAtoZ[indexPath.row];
        cell.textLabel.text = pokemonName;
        cell.imageView.image = [UIImage imageNamed:pokemonName];
        return cell;
    } else {
    
    NSArray *keys = [self.pokemon allKeys];
    NSString *key = keys[indexPath.section];
    NSArray *arrayOfPokemonNames = [self.pokemon objectForKey:key];
    
    NSString *pokemonName = [arrayOfPokemonNames objectAtIndex:indexPath.row];
    
    cell.textLabel.text = pokemonName;
    cell.imageView.image = [UIImage imageNamed:pokemonName];
    return cell;
        
    }
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if(self.showAllPokemon){
        return @"Pokemon Index";
    } else {
    
    NSArray *keys = [self.pokemon allKeys];
    NSString *key = keys[section];
    return key;
    }

}

@end
