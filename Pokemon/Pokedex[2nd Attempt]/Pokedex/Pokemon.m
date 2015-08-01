//
//  Pokemon.m
//  Pokedex
//
//  Created by Eric Sze on 7/31/15.
//  Copyright (c) 2015 Eric Sze. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

- (UIImage *)image {
    return [UIImage imageNamed:self.imageURLString];
}

+ (NSDictionary *)allPokemon {
    return @{
             @"Bug" : @[
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
                     ],
             
             @"Dragon" : @[
                     @"dragonair",
                     @"dratini"
                     ],
             
             @"Electric" : @[
                     @"electabuzz",
                     @"electrode",
                     @"jolteon",
                     @"magnemite",
                     @"magneton",
                     @"pikachu",
                     @"raichu",
                     @"voltorb",
                     @"zapdos"
                     ],
             
             @"Fairy" : @[
                     @"clefable",
                     @"clefairy",
                     @"jigglypuff",
                     @"mr-mime",
                     @"wigglytuff"
                     ],
             
             @"Fire" : @[
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
                     ],
             
             @"Fighting" : @[
                     @"hitmonchan",
                     @"hitmonlee",
                     @"machamp",
                     @"machoke",
                     @"machop",
                     @"mankey",
                     @"poliwrath",
                     @"primeape"
                     ],
             
             @"Flying" : @[
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
             
             @"Ghost" : @[
                     @"gastly",
                     @"gengar",
                     @"haunter"
                     ],
             
             @"Grass" : @[
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
             
             @"Ground" : @[
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
             
             @"Ice" : @[
                     @"articuno",
                     @"cloyster",
                     @"dewgong",
                     @"jynx",
                     @"lapras"
                     ],
             
             @"Normal" : @[
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
             
             @"Poison" : @[
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
             
             @"Psychic" : @[
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
             
             @"Rock" : @[
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
             
             @"Steel" : @[
                     @"magnemite",
                     @"magneton"
                     ],
             
             @"Water" : @[
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

@end