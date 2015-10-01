//
//  PokemonArray.m
//  Pokemon
//
//  Created by Kaisha Jones on 9/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonArray.h"

@implementation PokemonArray


- (void)initializeData {
    
    [self initializeAtoZArray];
    [self initializeTypeDictionary];
    
}

- (void)initializeAtoZArray {
    
    self.aToZPokedex = @[
                         @"Abra",
                         @"Aerodactyl",
                         @"Alakazam",
                         @"Arbok",
                         @"Arcanine",
                         @"Articuno",
                         @"Beedrill",
                         @"Bellsprout",
                         @"Blastoise",
                         @"Bulbasaur",
                         @"Butterfree",
                         @"Caterpie",
                         @"Chansey",
                         @"Charizard",
                         @"Charmander",
                         @"Charmeleon",
                         @"Clefable",
                         @"Clefairy",
                         @"Cloyster",
                         @"Cubone",
                         @"Dewgong",
                         @"Diglett",
                         @"Ditto",
                         @"Dodrio",
                         @"Doduo",
                         @"Dragonair",
                         @"Dragonite",
                         @"Dratini",
                         @"Drowzee",
                         @"Dugtrio",
                         @"Eevee",
                         @"Ekans",
                         @"Electabuzz",
                         @"Electrode",
                         @"Exeggcute",
                         @"Exeggutor",
                         @"Farfetch'd",
                         @"Fearow",
                         @"Flareon",
                         @"Gastly",
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
                         @"Gyarados",
                         @"Haunter",
                         @"Hitmonchan",
                         @"Hitmonlee",
                         @"Horsea",
                         @"Hypno",
                         @"Ivysaur",
                         @"Jigglypuff",
                         @"Jolteon",
                         @"Jynx",
                         @"Kabuto",
                         @"Kabutops",
                         @"Kadabra",
                         @"Kakuna",
                         @"Kangaskhan",
                         @"Kingler",
                         @"Koffing",
                         @"Krabby",
                         @"Lapras",
                         @"Lickitung",
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
                         @"Nidoking",
                         @"Nidoqueen",
                         @"Nidoran♀",
                         @"Nidoran♂",
                         @"Nidorina",
                         @"Nidorino",
                         @"Ninetales",
                         @"Oddish",
                         @"Omanyte",
                         @"Omastar",
                         @"Onix",
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
                         @"Raichu",
                         @"Rapidash",
                         @"Raticate",
                         @"Rattata",
                         @"Rhydon",
                         @"Rhyhorn",
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
                         @"Tangela",
                         @"Tauros",
                         @"Tentacool",
                         @"Tentacruel",
                         @"Vaporeon",
                         @"Venomoth",
                         @"Venonat",
                         @"Venusaur",
                         @"Victreebel",
                         @"Vileplume",
                         @"Voltorb",
                         @"Vulpix",
                         @"Wartortle",
                         @"Weedle",
                         @"Weepinbell",
                         @"Weezing",
                         @"Wigglytuff",
                         @"Zapdos",
                         @"Zubat"
                         ];
    
    
}


- (void) initializeTypeDictionary {
    
    
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
                     @"Venonat",
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
                       @"Mr-Mime",
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
    
    NSArray* grass = @[
                       @"Bellsprout",
                       @"Bulbasaur",
                       @"Exeggcute",
                       @"Exeggutor",
                       @"loom",
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
    
    self.typePokedex = @{
                         
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
    
    
}




@end

