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
@property (nonatomic) NSDictionary *pokemonTypes;

@end

@implementation PKTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor *backgroundColor = [UIColor colorWithRed:95/255.0 green:155/255.0 blue:217/255.0 alpha:1];
    self.tableView.backgroundView = [[UIView alloc]initWithFrame:self.tableView.bounds];
    self.tableView.backgroundView.backgroundColor = backgroundColor;
    
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
    
    //pokemon by type
    
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
                        @"dratini",
                        @"dragonite"
                        
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
                        @"farfetch'd",
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
                        @"farfetch'd",
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
                        @"wigglytuff",
                        @"clefable",
                        @"clefairy"
                        
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
                         @"mr. mime",
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
                                   
                                   @"bug" : bug,
                                   @"dragon" : dragon,
                                   @"electric" : electric,
                                   @"fire" : fire,
                                   @"fighting" : fighting,
                                   @"flying" : flying,
                                   @"ghost" : ghost,
                                   @"grass" : grass,
                                   @"ground" : ground,
                                   @"ice" : ice,
                                   @"normal" : normal,
                                   @"poison" : poison,
                                   @"psychic" : psychic,
                                   @"rock" : rock,
                                   @"water" : water
        
                                   };
    
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
    
    cell.layer.borderWidth = 2.0f;
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
