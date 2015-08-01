//
//  PKAlphabeticalDataSource.m
//  PokemonAppHomework
//
//  Created by Jackie Meggesto on 7/30/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import "PKAlphabeticalDataSource.h"

@interface PKAlphabeticalDataSource()

@property (nonatomic) NSArray *pokemonNames;

@end

@implementation PKAlphabeticalDataSource

- (instancetype)init {
    if (self = [super init]) {
        self.pokemonNames = @[
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
                              @"Mew"
                              
                              
                              
                              
                             ];
        return self;
    }
    
    return nil;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.pokemonNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell" forIndexPath:indexPath];
    
    NSString *pokemonName = self.pokemonNames[indexPath.row];
    cell.textLabel.text = pokemonName;
    cell.imageView.image = [UIImage imageNamed:[pokemonName lowercaseString]];
    
    return cell;
}

@end
