//
//  PKMasterTableViewController.m
//  Pokemon
//
//  Created by Natalia Estrella on 7/29/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKMasterTableViewController.h"
#import "PKDetailViewController.h"

@interface PKMasterTableViewController ()

@end

@implementation PKMasterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
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
    
    NSArray *electric = @[
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
    NSArray *fire = @[
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
    
    NSArray *grass =@[
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
    
    self.typePokemon = @[@{@"name":@"bug",
                           @"list":bug},
                         @{@"name":@"dragon",
                           @"list":dragon},
                         @{@"name":@"electric",
                           @"list":electric},
                         @{@"name":@"fairy",
                           @"list":fairy},
                         @{@"name":@"fire",
                           @"list":fire},
                         @{@"name":@"fighting",
                           @"list":fighting},
                         @{@"name":@"flying",
                           @"list":flying},
                         @{@"name":@"ghost",
                           @"list":ghost},
                         @{@"name":@"grass",
                           @"list":grass},
                         @{@"name":@"ice",
                           @"list":ice},
                         @{@"name":@"normal",
                           @"list":normal},
                         @{@"name":@"poison",
                           @"list":poison},
                         @{@"name":@"psychic",
                           @"list":psychic},
                         @{@"name":@"rock",
                           @"list":rock},
                         @{@"name":@"steel",
                           @"list":steel},
                         @{@"name":@"water",
                           @"list":water},
                         @{@"name":@"ground",
                           @"list":ground}];
    

    
    self.alphabeticalPokemon = @[@{@"name":@"A",
                                   @"list":@[@"Abra",
                                             @"Aerodactyl",
                                             @"Alakazam",
                                             @"Arbok",
                                             @"Arcanine",
                                             @"Articuno"]},
                                 @{@"name":@"B",
                                   @"list":@[@"Beedrill",
                                             @"Bellsprout",
                                             @"Blastoise",
                                             @"Bulbasaur",
                                             @"Butterfree"]},
                                 @{@"name":@"C",
                                   @"list":@[@"Caterpie",
                                             @"Chansey",
                                             @"Charizard",
                                             @"Charmander",
                                             @"Charmeleon",
                                             @"Clefable",
                                             @"Clefairy",
                                             @"Cloyster",
                                             @"Cubone"]},
                                 @{@"name":@"D",
                                   @"list":@[@"Dewgong",
                                             @"Diglett",
                                             @"Ditto",
                                             @"Dodrio",
                                             @"Doduo",
                                             @"Dragonair",
                                             @"Dragonite",
                                             @"Dratini",
                                             @"Drowzee",
                                             @"Dugtrio"]},
                                 @{@"name":@"E",
                                   @"list":@[@"Eevee",
                                             @"Ekans",
                                             @"Electabuzz",
                                             @"Electrode",
                                             @"Exeggcute",
                                             @"Exeggutor",]},
                                 @{@"name":@"F",
                                   @"list":@[@"Farfetch'd",
                                             @"Fearow",
                                             @"Flareon",]},
                                 @{@"name":@"G",
                                   @"list":@[@"Gastly",
                                             @"Gengar",
                                             @"Geodude",
                                             @"Gloom",
                                             @"Golbat",
                                             @"Goldeen",
                                             @"Golduck",
                                             @"Golem",
                                             @"Graveler",
                                             @"Grimer",
                                             @"Growlithe",
                                             @"Gyarados"]},
                                 @{@"name":@"H",
                                   @"list":@[@"Haunter",
                                             @"Hitmonchan",
                                             @"Hitmonlee",
                                             @"Horsea",
                                             @"Hypno"]},
                                 @{@"name":@"I",
                                   @"list":@[@"Ivysaur"]},
                                 @{@"name":@"J",
                                   @"list":@[@"Jigglypuff",
                                             @"Jolteon",
                                             @"Jynx",]},
                                 @{@"name":@"K",
                                   @"list":@[@"Kabuto",
                                             @"Kabutops",
                                             @"Kadabra",
                                             @"Kakuna",
                                             @"Kangaskhan",
                                             @"Kingler",
                                             @"Koffing",
                                             @"Krabby"]},
                                 @{@"name":@"L",
                                   @"list":@[
                                           @"Lapras",
                                           @"Lickitung",
                                           ]},
                                 @{@"name":@"M",
                                   @"list":@[
                                           @"Machamp",
                                           @"Machoke",
                                           @"Machop",
                                           @"Magikarp",
                                           @"Magmar",
                                           @"Magnemite",
                                           @"Magneton",
                                           @"Mankey",
                                           @"Marowak",
                                           @"Meowth",
                                           @"Metapod",
                                           @"Mew",
                                           @"Mewtwo",
                                           @"Moltres",
                                           @"Mr. Mime",
                                           @"Muk",
                                           ]},
                                 @{@"name":@"N",
                                   @"list":@[
                                           @"Nidoking",
                                           @"Nidoqueen",
                                           @"Nidoran♀",
                                           @"Nidoran♂",
                                           @"Nidorina",
                                           @"Nidorino",
                                           @"Ninetales"
                                           ]},
                                 
                                 @{@"name":@"O",
                                   @"list":@[
                                           @"Oddish",
                                           @"Omanyte",
                                           @"Omastar",
                                           @"Onix",
                                           ]},
                                 @{@"name":@"P",
                                   @"list":@[
                                           @"Paras",
                                           @"Parasect",
                                           @"Persian",
                                           @"Pidgeot",
                                           @"Pidgeotto",
                                           @"Pidgey",
                                           @"Pikachu",
                                           @"Pinsir",
                                           @"Poliwag",
                                           @"Poliwhirl",
                                           @"Poliwrath",
                                           @"Ponyta",
                                           @"Porygon",
                                           @"Primeape",
                                           @"Psyduck",
                                           ]},
                                 @{@"name":@"Q",
                                   @"list":@[
                                           
                                           ]},
                                 @{@"name":@"R",
                                   @"list":@[
                                           @"Raichu",
                                           @"Rapidash",
                                           @"Raticate",
                                           @"Rattata",
                                           @"Rhydon",
                                           @"Rhyhorn",
                                           ]},
                                 @{@"name":@"S",
                                   @"list":@[
                                           @"Sandshrew",
                                           @"Sandslash",
                                           @"Scyther",
                                           @"Seadra",
                                           @"Seaking",
                                           @"Seel",
                                           @"Shellder",
                                           @"Slowbro",
                                           @"Slowpoke",
                                           @"Snorlax",
                                           @"Spearow",
                                           @"Squirtle",
                                           @"Starmie",
                                           @"Staryu",
                                           ]},
                                 @{@"name":@"T",
                                   @"list":@[
                                           @"Tangela",
                                           @"Tauros",
                                           @"Tentacool",
                                           @"Tentacruel",
                                           ]},
                                 @{@"name":@"U",
                                   @"list":@[
                                           
                                           ]},
                                 @{@"name":@"V",
                                   @"list":@[
                                           @"Vaporeon",
                                           @"Venomoth",
                                           @"Venonat",
                                           @"Venusaur",
                                           @"Victreebel",
                                           @"Vileplume",
                                           @"Voltorb",
                                           @"Vulpix",
                                           ]},
                                 @{@"name":@"W",
                                   @"list":@[
                                           @"Wartortle",
                                           @"Weedle",
                                           @"Weepinbell",
                                           @"Weezing",
                                           @"Wigglytuff",
                                           ]},
                                 @{@"name":@"X",
                                   @"list":@[
                                           
                                           ]},
                                 @{@"name":@"Y",
                                   @"list":@[
                                           
                                           ]},
                                 @{@"name":@"Z",
                                   @"list":@[
                                           @"Zapdos",
                                           @"Zubat"
                                           ]}];
    
    self.selectedPokemon = self.alphabeticalPokemon;
    
}


    
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.selectedPokemon.count+1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // creates extra cell for header.
    if (section == 0) {
        return 1;
    }
    NSDictionary *sectionDictionary = self.selectedPokemon[section -1];
    NSArray *pokemonList = sectionDictionary[@"list"];
    return pokemonList.count;
}

- (IBAction)onSegmentChange:(id)sender {
    UISegmentedControl *segmentedControl = sender;
    NSInteger selected = segmentedControl.selectedSegmentIndex;
    

    if (selected == 0) {
        self.selectedPokemon = self.alphabeticalPokemon;
    }
    else {
        self.selectedPokemon = self.typePokemon;
    }
    
    [self.tableView reloadData];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        return [tableView dequeueReusableCellWithIdentifier:@"PokemonHeaderCell" forIndexPath:indexPath];
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonCell" forIndexPath:indexPath];
    
//    cell.textLabel.text = [NSString stringWithFormat:@"%@, %@", @(indexPath.section), @(indexPath.row)];
    NSString *pokemonName = self.selectedPokemon[indexPath.section -1][@"list"][indexPath.row];
    cell.textLabel.text = pokemonName;
    
    NSString *imageName = pokemonName.lowercaseString;
    if ([pokemonName isEqualToString:@"Nidoran♀"]) {
        imageName = @"nidoran";
    }
    else if ([pokemonName isEqualToString:@"Nidoran♂"]) {
        imageName = @"nidoran-f";
    }
    else if ([pokemonName isEqualToString:@"Farfetch'd"]) {
        imageName = @"farfetchd";
    }
    else if ([pokemonName isEqualToString:@"Mr. Mime"]) {
        imageName = @"mr-mime";
    }
    
    cell.imageView.image = [UIImage imageNamed:imageName];
    
    return cell;
}



- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    //gets rid of extra header for section 0.
    if (section == 0) {
        return nil;
    }
    
    return self.selectedPokemon[section -1][@"name"];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    UITableViewCell *cell = sender;
    
    PKDetailViewController *detailVC = [segue destinationViewController];
    detailVC.pokemonName = cell.textLabel.text;
    detailVC.pokemonPhoto = cell.imageView.image;
}


@end
