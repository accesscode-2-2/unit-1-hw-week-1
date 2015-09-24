//
//  PokeData.m
//  Pokemon
//
//  Created by Eric Sanchez on 9/24/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "PokeData.h"

@implementation PokeData


- (void) initializeAlphaPokemon{
NSArray *allPokemon = @[
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
						 @"Mew"];

						 self.alphaPokemon = [allPokemon sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
}

- (void)initializeTypeDictionary {
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
	
	self.typePokemon = @{
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
