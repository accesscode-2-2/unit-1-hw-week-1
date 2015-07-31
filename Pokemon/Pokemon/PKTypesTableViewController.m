//
//  PKTypesTableViewController.m
//  Pokemon
//
//  Created by Christella on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKTypesTableViewController.h"
#import "PKNames.h"

@interface PKTypesTableViewController ()

@property(nonatomic) NSDictionary *pokedex;

@end

@implementation PKTypesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Pokemon";
    
    
    self.pokedex = @{
                     @"Bug":@[@"beedrill",
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
                              @"weedle"],
                     
                     @"Dragon":@[@"dragonair",
                                 @"dratini"
                                 ],
                   
                     @"Electric":@[@"abra",
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
                                   @"zapdos"],
                     @"Fairy":@[
                             @"clefable",
                             @"clefairy",
                             @"jigglypuff",
                             @"mr-mime",
                             @"wigglytuff"],
                     
                     @"Fire":@[@"arcanine",
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
                               @"vulpix"],
                     
                     
                     @"Fighting":@[
                             @"hitmonchan",
                             @"hitmonlee",
                             @"machamp",
                             @"machoke",
                             @"machop",
                             @"mankey",
                             @"poliwrath",
                             @"primeape"
                             ],
                     
                     @"Flying": @[
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
                     
                     
                     @"Ghost": @[
                         @"gastly",
                         @"gengar",
                         @"haunter"
                         ],
                     
                     @"Grass": @[
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
                     
                     @"Ground": @[
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
                     
                     @"Ice": @[
                         @"articuno",
                         @"cloyster",
                         @"dewgong",
                         @"jynx",
                         @"lapras"
                         ],
                     
                     @"Normal": @[
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
                     
                     @"Poison": @[
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


                     @"Psychic": @[
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
                     
                     @"Rock": @[
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
                     
                     @"Steel": @[
                         @"magnemite",
                         @"magneton"
                         ],
                     
                     @"Water": @[
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
                        ]
                    };

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    NSArray *keys = [self.pokedex allKeys];
    
    return keys.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *keys = [self.pokedex allKeys];
    NSString *key = keys[section];
    NSArray *values = self.pokedex[key];
    return values.count;
    
    return 0;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    NSArray *keys = [self.pokedex allKeys];
    NSString *key = keys[indexPath.section];
    NSArray *pokeNames = [self.pokedex objectForKey:key];
    
    NSString *pokeName = [pokeNames objectAtIndex:indexPath.row];
    
    cell.textLabel.text = pokeName;

    
    
    return cell;
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSArray *keys = [self.pokedex allKeys];
    NSString *key = keys[section];
    
    return key;
}



@end
