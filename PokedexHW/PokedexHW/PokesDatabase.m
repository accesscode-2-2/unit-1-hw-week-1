//
//  PokesDatabase.m
//  PokedexHW
//
//  Created by Z on 7/30/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import "PokesDatabase.h"

@implementation PokesDatabase

-(void)makeAllThePokes{
    
    self.pokemon = [[NSMutableDictionary alloc] init];
    
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
    
   [self.pokemon setObject:bug forKey:@"bug"];
    
    NSArray *dragon = @[
                        @"dragonair",
                        @"dratini"
                        ];
    
    [self.pokemon setObject:dragon forKey:@"dragon"];
    
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
    
    [self.pokemon setObject:electric forKey:@"electric"];
    
    NSArray *fairy = @[
                       @"clefable",
                       @"clefairy",
                       @"jigglypuff",
                       @"mr-mime",
                       @"wigglytuff"
                       ];
    
    [self.pokemon setObject:fairy forKey:@"fairy"];
    
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
    
    [self.pokemon setObject:fire forKey:@"fire"];
    
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
    
    [self.pokemon setObject:fighting forKey:@"fighting"];
    
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
    
    [self.pokemon setObject:flying forKey:@"flying"];
    
    NSArray *ghost = @[
                       @"gastly",
                       @"gengar",
                       @"haunter"
                       ];
    
    [self.pokemon setObject:ghost forKey:@"ghost"];
    
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
    
    [self.pokemon setObject:grass forKey:@"grass"];
    
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
    
    [self.pokemon setObject:ground forKey:@"ground"];
    
    
    NSArray *ice = @[
                     @"articuno",
                     @"cloyster",
                     @"dewgong",
                     @"jynx",
                     @"lapras"
                     ];
    
    [self.pokemon setObject:ice forKey:@"ice"];
    
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
    
    [self.pokemon setObject:normal forKey:@"normal"];
    
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
    
    [self.pokemon setObject:poison forKey:@"poison"];
    
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
    
    [self.pokemon setObject:psychic forKey:@"psychic"];
    
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
    
    [self.pokemon setObject:rock forKey:@"rock"];
    
    NSArray *steel = @[
                       @"magnemite",
                       @"magneton"
                       ];
    
    [self.pokemon setObject:steel forKey:@"steel"];
    
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
    
    [self.pokemon setObject:water forKey:@"water"];
    
    NSArray *allPokes = @[@"Bulbasaur",
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
    
    self.AZpokemon = [[NSArray alloc] init];
    
    self.AZpokemon = [allPokes sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
}



@end

