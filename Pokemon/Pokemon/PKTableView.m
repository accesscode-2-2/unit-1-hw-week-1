//
//  PKTableView.m
//  Pokemon
//
//  Created by Shena Yoshida on 7/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKTableView.h"

@interface PKTableView ()

@property (nonatomic) NSDictionary* pokemonList;
// @property (nonatomic) NSArray* pokemonList;
// @property (nonatomic) NSArray* tableData;

@end

@implementation PKTableView

- (void)viewDidLoad {
    [super viewDidLoad];
    
   self.title = @"Pokemon"; // this changes the root view controller heading title


    NSArray *bug = @[
                     @"Butterfree",
                     @"Scyther",
                     @"Paras",
                     @"Parasect",
                     @"Weedle",
                     @"Kakuna",
                     @"Weedril",
                     @"Venonat",
                     @"Venomoth",
                     @"Caterpie",
                     @"Metapod",
                     @"Pinsir"
                     ];
    
    NSArray *dragon = @[
                        @"Dragonite",
                        @"Dratini",
                        @"Dagonair"
                        ];
    
    NSArray *electric = @[
                          @"Zapdos",
                          @"Magnemite",
                          @"Magneton",
                          @"Pikachu",
                          @"Raichu",
                          @"Voltorb",
                          @"Electrode",
                          @"Electabuzz",
                          @"Jolteon"
                          ];
    
    NSArray *fairy = @[
                       @"Clefairy",
                       @"Clefable",
                       @"Jigglypuff",
                       @"Wigglytuff",
                       @"Mr. Mime"
                       ];
    
    NSArray *fighting = @[
                          @"Mankey",
                          @"Primeape",
                          @"Machop",
                          @"Machoke",
                          @"Machamp",
                          @"Hitmonlee",
                          @"Hitmonchan",
                          @"Poliwrath"
                          ];
    
    NSArray *flying = @[
                        @"Charizard",
                        @"Moltres",
                        @"Butterfree",
                        @"Scyther",
                        @"Dragonite",
                        @"Zapdos",
                        @"Charizard",
                        @"Moltres",
                        @"Articuno",
                        @"Pidgey",
                        @"Pidgeotto",
                        @"Pidgeot",
                        @"Spearow",
                        @"Fearow",
                        @"Farfeetch'd",
                        @"Doduo",
                        @"Dodrio",
                        @"Zubat",
                        @"Golbat",
                        @"Aerodactyl",
                        @"Gyarados"
                        ];
    
    NSArray *fire = @[
                      @"Charizard",
                      @"Moltres",
                      @"Charmander",
                      @"Charmeleon",
                      @"Vulpix",
                      @"Ninetales",
                      @"Growlithe",
                      @"Arcnanine",
                      @"Ponyta",
                      @"Rapidash",
                      @"Magmar",
                      @"Flareon"
                      ];
    
    NSArray *ghost = @[
                       @"Gastly",
                       @"Haunter",
                       @"Gengar"
                       ];
    
    NSArray *grass = @[
                       @"Weepinbell",
                       @"Bulbasaur",
                       @"Ivysaur",
                       @"Venusaur",
                       @"Oddish",
                       @"Gloom",
                       @"Vilepume",
                       @"Bellsprout",
                       @"Victreebel",
                       @"Exeggcute",
                       @"Exeggutor",
                       @"Tangela",
                       @"Paras",
                       @"Parasect"
                       ];
    
    NSArray *ground = @[
                        @"Rhyhorn",
                        @"Rhydon",
                        @"Sandshrew",
                        @"Sandslash",
                        @"Diglett",
                        @"Dugtrio",
                        @"Cubone",
                        @"Marowak",
                        @"Nidoqueen",
                        @"Nidoking",
                        @"Geodude",
                        @"Graveler",
                        @"Golem",
                        @"Onix"
                        ];
    
    NSArray *ice = @[
                     @"Articuno",
                     @"Jynx",
                     @"Dewgong",
                     @"Cloyster",
                     @"Lapras"
                     ];
    
    NSArray *normal = @[
                        @"Jigglypuff",
                        @"Wigglytuff",
                        @"Pidgey",
                        @"Pidgeotto",
                        @"Pidgeot",
                        @"Spearow",
                        @"Fearow",
                        @"Farfeetch'd",
                        @"Doduo",
                        @"Dodrio",
                        @"Rattata",
                        @"Raticate",
                        @"Meowth",
                        @"Persian",
                        @"Lickitung",
                        @"Chansey",
                        @"Kangaskhan",
                        @"Tauros",
                        @"Ditto",
                        @"Evee",
                        @"Porygon",
                        @"Snorlax"
                        ];
    
    NSArray *poison = @[
                        @"Zubat",
                        @"Golbat",
                        @"Nidoqueen",
                        @"Nidoking",
                        @"Ekans",
                        @"Arbok",
                        @"Nidoran♀",
                        @"Nidorina",
                        @"Nidoran♂",
                        @"Nidorino",
                        @"Grimer",
                        @"Muk",
                        @"Koffing",
                        @"Weezing",
                        @"Weepinbell",
                        @"Weedle",
                        @"Kakuna",
                        @"Beedril",
                        @"Venonat",
                        @"Venomoth",
                        @"Gastly",
                        @"Haunter",
                        @"Gengar",
                        @"Bulbasaur",
                        @"Ivysaur",
                        @"Venusaur",
                        @"Oddish",
                        @"Gloom",
                        @"Vilepume",
                        @"Bellsprout",
                        @"Victreebel",
                        @"Tentacool",
                        @"Tentacruel"
                        ];
    
    NSArray *psychic = @[
                         @"Mr. Mime",
                         @"Abra",
                         @"Kadabra",
                         @"Alakazam",
                         @"Drowzee",
                         @"Hypno",
                         @"Mewtwo",
                         @"Mew",
                         @"Exeggcute",
                         @"Exeggutor",
                         @"Jynx",
                         @"Slowpoke",
                         @"Slowbro",
                         @"Starmie"
                         ];
    
    NSArray *rock = @[
                      @"Aerodactyl",
                      @"Geodude",
                      @"Graveler",
                      @"Golem",
                      @"Onix",
                      @"Omanyte",
                      @"Omastar",
                      @"Kabuto",
                      @"Kabutops",
                      @"Rhyhorn",
                      @"Rhydon"
                      ];
    
    NSArray *steel = @[
                       @"Magnemite",
                       @"Magneton"
                       ];
    
    NSArray *water = @[
                       @"Poliwrath",
                       @"Gyarados",
                       @"Dewgong",
                       @"Cloyster",
                       @"Lapras",
                       @"Tentacool",
                       @"Tentacruel",
                       @"Slowpoke",
                       @"Slowbro",
                       @"Starmie",
                       @"Squirtle",
                       @"Wartortle",
                       @"Blastoise",
                       @"Psyduck",
                       @"Golduck",
                       @"Poliwag",
                       @"Poliwhirl",
                       @"Seel",
                       @"Shellder",
                       @"Krabby",
                       @"Kingler",
                       @"Horsea",
                       @"Seadra",
                       @"Goldeen",
                       @"Seaking",
                       @"Staryu",
                       @"Magikarp",
                       @"Vaporeon",
                       @"Omanyte",
                       @"Omastar",
                       @"Kabuto",
                       @"Kabutops"
                       ];
    
    self.pokemonList = @{
                         @"Bug"      : bug,
                         @"Dragon"   : dragon,
                         @"Electric" : electric,
                         @"Fairy"    : fairy,
                         @"Fighting" : fighting,
                         @"Flying"   : flying,
                         @"Fire"     : fire,
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
    
//   self.pokemonList = @[
//                         @"Bulbasaur",
//                         @"Ivysaur",
//                         @"Venusaur",
//                         @"Charmander",
//                         @"Charmeleon",
//                         @"Charizard",
//                         @"Squirtle",
//                         @"Wartortle",
//                         @"Blastoise",
//                         @"Caterpie",
//                         @"Metapod",
//                         @"Butterfree",
//                         @"Weedle",
//                         @"Kakuna",
//                         @"Beedrill",
//                         @"Pidgey",
//                         @"Pidgeotto",
//                         @"Pidgeot",
//                         @"Rattata",
//                         @"Raticate",
//                         @"Spearow",
//                         @"Fearow",
//                         @"Ekans",
//                         @"Arbok",
//                         @"Pikachu",
//                         @"Raichu",
//                         @"Sandshrew",
//                         @"Sandslash",
//                         @"Nidoran♀",
//                         @"Nidorina",
//                         @"Nidoqueen",
//                         @"Nidoran♂",
//                         @"Nidorino",
//                         @"Nidoking",
//                         @"Clefairy",
//                         @"Clefable",
//                         @"Vulpix",
//                         @"Ninetales",
//                         @"Jigglypuff",
//                         @"Wigglytuff",
//                         @"Zubat",
//                         @"Golbat",
//                         @"Oddish",
//                         @"Gloom",
//                         @"Vileplume",
//                         @"Paras",
//                         @"Parasect",
//                         @"Venonat",
//                         @"Venomoth",
//                         @"Diglett",
//                         @"Dugtrio",
//                         @"Meowth",
//                         @"Persian",
//                         @"Psyduck",
//                         @"Golduck",
//                         @"Mankey",
//                         @"Primeape",
//                         @"Growlithe",
//                         @"Arcanine",
//                         @"Poliwag",
//                         @"Poliwhirl",
//                         @"Poliwrath",
//                         @"Abra",
//                         @"Kadabra",
//                         @"Alakazam",
//                         @"Machop",
//                         @"Machoke",
//                         @"Machamp",
//                         @"Bellsprout",
//                         @"Weepinbell",
//                         @"Victreebel",
//                         @"Tentacool",
//                         @"Tentacruel",
//                         @"Geodude",
//                         @"Graveler",
//                         @"Golem",
//                         @"Ponyta",
//                         @"Rapidash",
//                         @"Slowpoke",
//                         @"Slowbro",
//                         @"Magnemite",
//                         @"Magneton",
//                         @"Farfetch'd",
//                         @"Doduo",
//                         @"Dodrio",
//                         @"Seel",
//                         @"Dewgong",
//                         @"Grimer",
//                         @"Muk",
//                         @"Shellder",
//                         @"Cloyster",
//                         @"Gastly",
//                         @"Haunter",
//                         @"Gengar",
//                         @"Onix",
//                         @"Drowzee",
//                         @"Hypno",
//                         @"Krabby",
//                         @"Kingler",
//                         @"Voltorb",
//                         @"Electrode",
//                         @"Exeggcute",
//                         @"Exeggutor",
//                         @"Cubone",
//                         @"Marowak",
//                         @"Hitmonlee",
//                         @"Hitmonchan",
//                         @"Lickitung",
//                         @"Koffing",
//                         @"Weezing",
//                         @"Rhyhorn",
//                         @"Rhydon",
//                         @"Chansey",
//                         @"Tangela",
//                         @"Kangaskhan",
//                         @"Horsea",
//                         @"Seadra",
//                         @"Goldeen",
//                         @"Seaking",
//                         @"Staryu",
//                         @"Starmie",
//                         @"Mr. Mime",
//                         @"Scyther",
//                         @"Jynx",
//                         @"Electabuzz",
//                         @"Magmar",
//                         @"Pinsir",
//                         @"Tauros",
//                         @"Magikarp",
//                         @"Gyarados",
//                         @"Lapras",
//                         @"Ditto",
//                         @"Eevee",
//                         @"Vaporeon",
//                         @"Jolteon",
//                         @"Flareon",
//                         @"Porygon",
//                         @"Omanyte",
//                         @"Omastar",
//                         @"Kabuto",
//                         @"Kabutops",
//                         @"Aerodactyl",
//                         @"Snorlax",
//                         @"Articuno",
//                         @"Zapdos",
//                         @"Moltres",
//                         @"Dratini",
//                         @"Dragonair",
//                         @"Dragonite",
//                         @"Mewtwo",
//                         @"Mew"
//                         ];

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return [self.pokemonList allKeys].count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

//    return self.pokemonList.count; // this returns one row for each item on my pokemonList
   
    NSArray *keys = [self.pokemonList allKeys];
    NSString *key = keys[section];
    NSArray* pokemons = [self.pokemonList objectForKey:key];
    
return [pokemons count];
}

//- (NSString *)tableView: (UITableView *) tableView titleForHeaderInSection:(NSInteger)section {
//    NSArray *keys = [self.pokemonList allKeys];
//    NSString *key = keys[section];


//    return key;
//}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCellIdentifier" forIndexPath:indexPath]; // "dequeueReusableCell...." only activates enough cells to appear on the screen at one time (ie: it won't show you all 10,000,000 songs in your iTunes library) so you can scroll really fast! I also named identifier "pokemonCellIdentifier" and connected it to my view controller.
    
  // cell.textLabel.text = self.pokemonList[indexPath.row];
    
    NSArray *keys = [self.pokemonList allKeys]; // array of keys
    NSString *key = keys[indexPath.section ]; // specific key for section
    NSArray *pokemonArray = [self.pokemonList objectForKey:key]; // that key accesses the array
    NSString *pokemonName = pokemonArray[indexPath.row];
    
    cell.textLabel.text = pokemonName;
    
    return cell;
}

@end
