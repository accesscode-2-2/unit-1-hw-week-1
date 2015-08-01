//
//  PKTypeDataSource.m
//  PokemonAppHomework
//
//  Created by Jackie Meggesto on 7/30/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import "PKTypeDataSource.h"

@interface PKTypeDataSource ()

@property (nonatomic) NSDictionary *pkTypes;

@end

@implementation PKTypeDataSource

- (instancetype)init {
    if (self = [super init]) {
        NSArray *fireTypes = @[@"Charmander", @"Charmeleon", @"Vulpix", @"Ninetales", @"Growlithe", @"Arcanine", @"Ponyta", @"Rapidash", @"Magmar", @"Flareon"];
        NSArray *waterTypes = @[@"Squirtle", @"Wartortle", @"Blastoise", @"Psyduck", @"Golduck", @"Poliwag", @"Poliwhirl", @"Seel", @"Shellder", @"Krabby", @"Kingler", @"Horsea", @"Seadra", @"Goldeen", @"Seaking", @"Staryu", @"Magikarp", @"Vaporeon"];
        NSArray *grassTypes = @[@"Tangela"];
        NSArray *groundTypes = @[@"Sandshrew", @"Sandslash", @"Diglett", @"Dugtrio", @"Cubone", @"Marowak"];
        NSArray *bugTypes = @[@"Caterpie", @"Metapod", @"Pinsir",];
        NSArray *poisonTypes = @[@"Ekans", @"Arbok", @"Nidoran♀", @"Nidoran♂", @"Nidorina", @"Nidorino", @"Grimer", @"Muk", @"Koffing", @"Weezing"];
        NSArray *psychicTypes = @[@"Abra", @"Kadabra", @"Alakazam", @"Drowzee", @"Hypno", @"Mr. Mime", @"Mewtwo", @"Mew"];
        NSArray *normalTypes = @[@"Rattata", @"Raticate", @"Clefairy", @"Clefable", @"Jigglypuff", @"Wigglytuff", @"Meowth", @"Persian", @"Lickitung", @"Chansey", @"Kangaskhan", @"Tauros", @"Ditto", @"Eevee", @"Porygon", @"Snorlax"];
        NSArray *fightingTypes = @[@"Machop", @"Machoke", @"Machamp", @"Hitmonlee", @"Hitmonchan", @"Mankey", @"Primeape",];
        NSArray *electricTypes = @[@"Pikachu", @"Raichu", @"Magnemite", @"Magneton", @"Voltorb", @"Electrode", @"Electabuzz", @"Jolteon"];
        NSArray *dragonTypes = @[@"Dratini", @"Dragonair"];
        NSArray *grassPoisonTypes = @[@"Bulbasaur", @"Ivysaur", @"Venusaur", @"Oddish", @"Gloom", @"Vileplume", @"Bellsprout", @"Weepinbell", @"Victreebel", ];
        NSArray *fireFlyingTypes = @[@"Charizard", @"Moltres"];
        NSArray *bugPoisonTypes = @[@"Weedle", @"Kakuna", @"Beedrill", @"Venonat", @"Venomoth"];
        NSArray *bugFlyingTypes = @[@"Butterfree", @"Scyther", ];
        NSArray *waterFlyingTypes = @[@"Gyarados"];
        NSArray *normalFlyingTypes = @[@"Pidgey", @"Pidgeotto", @"Pidgeot", @"Spearow", @"Fearow", @"Farfetch'd", @"Doduo", @"Dodrio"];
        NSArray *poisonGroundTypes = @[@"Nidoqueen", @"Nidoking"];
        NSArray *rockGroundTypes = @[@"Geodude", @"Graveler", @"Golem", @"Onix", @"Rhyhorn", @"Rhydon"];
        NSArray *poisonFlyingTypes = @[@"Zubat", @"Golbat"];
        NSArray *bugGrassTypes = @[@"Paras", @"Parasect"];
        NSArray *waterFightingTypes = @[@"Poliwrath"];
        NSArray *waterPoisonTypes = @[@"Tentacool", @"Tentacruel"];
        NSArray *waterPsychicTypes = @[@"Slowpoke", @"Slowbro", @"Starmie"];
        NSArray *waterIceTypes = @[@"Dewgong", @"Cloyster", @"Lapras"];
        NSArray *poisonGhostTypes = @[@"Gastly", @"Haunter", @"Gengar"];
        NSArray *grassPsychicTypes = @[@"Exeggcute", @"Exeggutor"];
        NSArray *icePsychicTypes = @[@"Jynx"];
        NSArray *rockWaterTypes = @[@"Omanyte", @"Omastar", @"Kabuto", @"Kabutops"];
        NSArray *rockFlyingTypes = @[@"Aerodactyl"];
        NSArray *iceFlyingTypes = @[@"Articuno"];
        NSArray *electricFlyingTypes = @[@"Zapdos"];
        NSArray *dragonFlyingTypes = @[@"Dragonite"];
        
        
        self.pkTypes = @{     @"Fire" : fireTypes,
                              @"Water" : waterTypes,
                              @"Grass" : grassTypes,
                              @"Ground" : groundTypes,
                              @"Bug" : bugTypes,
                              @"Poison" : poisonTypes,
                              @"Psychic" : psychicTypes,
                              @"Normal" : normalTypes,
                              @"Fighting" : fightingTypes,
                              @"Electric" : electricTypes,
                              @"Dragon" : dragonTypes,
                              @"Grass/Poison" : grassPoisonTypes,
                              @"Fire/Flying" : fireFlyingTypes,
                              @"Bug/Poison" : bugPoisonTypes,
                              @"Bug/Flying" : bugFlyingTypes,
                              @"Water/Flying" : waterFlyingTypes,
                              @"Normal/Flying" : normalFlyingTypes,
                              @"Poison/Ground" : poisonGroundTypes,
                              @"Rock/Ground" : rockGroundTypes,
                              @"Poison/Flying" : poisonFlyingTypes,
                              @"Bug/Grass" : bugGrassTypes,
                              @"Water/Fighting" : waterFightingTypes,
                              @"Water/Poison" : waterPoisonTypes,
                              @"Water/Psychic" : waterPsychicTypes,
                              @"Water/Ice" : waterIceTypes,
                              @"Poison/Ghost" : poisonGhostTypes,
                              @"Grass/Psychic" : grassPsychicTypes,
                              @"Ice/Psychic" : icePsychicTypes,
                              @"Rock/Water" : rockWaterTypes,
                              @"Rock/Flying" : rockFlyingTypes,
                              @"Ice/Flying" : iceFlyingTypes,
                              @"Electric/Flying" : electricFlyingTypes,
                              @"Dragon/Flying" : dragonFlyingTypes
                         };
        return self;
    }
    
    return nil;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.pkTypes allKeys].count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *keys = [self.pkTypes allKeys];
    NSString *key = keys[section];
    NSArray *pokemonArray = [self.pkTypes objectForKey:key];
    
    return pokemonArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell" forIndexPath:indexPath];
    
    NSArray *keys = [self.pkTypes allKeys];
    NSString *key = keys[indexPath.section];
    NSArray *pokemonArray = [self.pkTypes objectForKey:key];
    NSString *pokemonName = pokemonArray[indexPath.row];
    
    cell.textLabel.text = pokemonName;
    cell.imageView.image = [UIImage imageNamed:[pokemonName lowercaseString]];
    
    
    return cell;
}
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *keys = [self.pkTypes allKeys];
    NSString *key = keys[section];
    return key;
}

@end
