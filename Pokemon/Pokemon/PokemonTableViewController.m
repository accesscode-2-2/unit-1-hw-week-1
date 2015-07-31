//
//  PokemonTableViewController.m
//  Pokemon
//
//  Created by Umar on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonTableViewController.h"

@interface PokemonTableViewController ()

@property (nonatomic) NSDictionary *pokemon;
@property (nonatomic) NSArray *pokemonArray;

@end

@implementation PokemonTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pokemon = @{
                     @"Grass" : @[@"Bulbasaur",
                                  @"Ivysaur",
                                  @"Venusaur",
                                  @"Oddish",
                                  @"Gloom",
                                  @"Vileplume",
                                  @"Paras",
                                  @"Parasect",
                                  @"Bellsprout",
                                  @"Weepinbell",
                                  @"Victreebel",
                                  @"Exeggcute",
                                  @"Exeggutor",
                                  @"Tangela"],
                     @"Poison" : @[@"Bulbasaur",
                                   @"Ivysaur",
                                   @"Venusaur",
                                   @"Weedle",
                                   @"Kakuna",
                                   @"Beedrill",
                                   @"Ekans",
                                   @"Arbok",
                                   @"Nidoran",
                                   @"Nidorina",
                                   @"Nidoqueen",
                                   @"Nidoran",
                                   @"Nidorino",
                                   @"Nidoking",
                                   @"Zubat",
                                   @"Golbat",
                                   @"Oddish",
                                   @"Gloom",
                                   @"Vileplume",
                                   @"Venonat",
                                   @"Venomoth",
                                   @"Bellsprout",
                                   @"Weepinbell",
                                   @"Victreebel",
                                   @"Tentacool",
                                   @"Tentacruel",
                                   @"Grimer",
                                   @"Muk",
                                   @"Gastly",
                                   @"Haunter",
                                   @"Gengar",
                                   @"Koffing",
                                   @"Weezing"],
                     @"Fire" : @[@"Charmander",
                                 @"Charmeleon",
                                 @"Charizard",
                                 @"Vulpix",
                                 @"Ninetales",
                                 @"Growlithe",
                                 @"Arcanine",
                                 @"Ponyta",
                                 @"Rapidash",
                                 @"Magmar",
                                 @"Flareon",
                                 @"Moltres"],
                     @"Flying" : @[@"Charizard",
                                   @"Butterfree",
                                   @"Pidgey",
                                   @"Pidgeotto",
                                   @"Pidgeot",
                                   @"Spearow",
                                   @"Fearow",
                                   @"Zubat",
                                   @"Golbat",
                                   @"Farfetch",
                                   @"Doduo",
                                   @"Dodrio",
                                   @"Scyther",
                                   @"Gyarados",
                                   @"Aerodactyl",
                                   @"Articuno",
                                   @"Zapdos",
                                   @"Moltres",
                                   @"Dragonite"],
                     @"Water" : @[@"Squirtle",
                                  @"Wartortle",
                                  @"Blastoise",
                                  @"Psyduck",
                                  @"Golduck",
                                  @"Poliwag",
                                  @"Poliwhirl",
                                  @"Poliwrath",
                                  @"Tentacool",
                                  @"Tentacruel",
                                  @"Slowpoke",
                                  @"Slowbro",
                                  @"Seel",
                                  @"Dewgong",
                                  @"Shellder",
                                  @"Cloyster",
                                  @"Krabby",
                                  @"Kingler",
                                  @"Horsea",
                                  @"Seadra",
                                  @"Goldeen",
                                  @"Seaking",
                                  @"Staryu",
                                  @"Starmie",
                                  @"Magikarp",
                                  @"Gyarados",
                                  @"Lapras",
                                  @"Vaporeon",
                                  @"Omanyte",
                                  @"Omastar",
                                  @"Kabuto",
                                  @"Kabutops"],
                     @"Bug" : @[@"Caterpie",
                                @"Metapod",
                                @"Butterfree",
                                @"Weedle",
                                @"Kakuna",
                                @"Beedrill",
                                @"Paras",
                                @"Parasect",
                                @"Venonat",
                                @"Venomoth",
                                @"Scyther",
                                @"Pinsir"],
                     @"Normal":@[@"Pidgey",
                                 @"Pidgeotto",
                                 @"Pidgeot",
                                 @"Rattata",
                                 @"Raticate",
                                 @"Spearow",
                                 @"Fearow",
                                 @"Jigglypuff",
                                 @"Wigglytuff",
                                 @"Meowth",
                                 @"Persian",
                                 @"Farfetch",
                                 @"Doduo",
                                 @"Dodrio",
                                 @"Lickitung",
                                 @"Chansey",
                                 @"Kangaskhan",
                                 @"Tauros",
                                 @"Ditto",
                                 @"Eevee",
                                 @"Porygon",
                                 @"Snorlax"],
                     @"Electric":@[@"Pikachu",
                                   @"Raichu",
                                   @"Magnemite",
                                   @"Magneton",
                                   @"Voltorb",
                                   @"Electrode",
                                   @"Electabuzz",
                                   @"Jolteon",
                                   @"Zapdos"],
                     @"Ground": @[@"Sandshrew",
                                  @"Sandslash",
                                  @"Nidoqueen",
                                  @"Nidoking",
                                  @"Diglett",
                                  @"Dugtrio",
                                  @"Geodude",
                                  @"Graveler",
                                  @"Golem",
                                  @"Onix",
                                  @"Cubone",
                                  @"Marowak",
                                  @"Rhyhorn",
                                  @"Rhydon"],
                     @"Fairy": @[@"Clefairy",
                                 @"Clefable",
                                 @"Jigglypuff",
                                 @"Wigglytuff",
                                 @"Mr. Mime"],
                     @"Fighting": @[@"Mankey",
                                    @"Primeape",
                                    @"Poliwrath",
                                    @"Machop",
                                    @"Machoke",
                                    @"Machamp",
                                    @"Hitmonlee",
                                    @"Hitmonchan"],
                     @"Psychic": @[@"Abra",
                                   @"Kadabra",
                                   @"Alakazam",
                                   @"Slowpoke",
                                   @"Slowbro",
                                   @"Drowzee",
                                   @"Hypno",
                                   @"Exeggcute",
                                   @"Exeggutor",
                                   @"Starmie",
                                   @"Mr. Mime",
                                   @"Jynx",
                                   @"Mewtwo",
                                   @"Mew"],
                     @"Rock": @[@"Geodude",
                                @"Graveler",
                                @"Golem",
                                @"Onix",
                                @"Rhyhorn",
                                @"Rhydon",
                                @"Omanyte",
                                @"Omastar",
                                @"Kabuto",
                                @"Kabutops",
                                @"Aerodactyl"],
                     @"Steel": @[@"Magnemite",
                                 @"Magneton"],
                     @"Ice": @[@"Dewgong",
                               @"Cloyster",
                               @"Jynx",
                               @"Lapras",
                               @"Articuno"],
                     @"Ghost": @[@"Gastly",
                                 @"Haunter",
                                 @"Gengar"],
                     @"Dragon": @[@"Dratini",
                                  @"Dragonair",
                                  @"Dragonite"]
                                  };
    self.pokemonArray = @[@"Squirtle",
                          @"Wartortle",
                          @"Blastoise",
                          @"Psyduck",
                          @"Golduck",
                          @"Poliwag",
                          @"Poliwhirl",
                          @"Poliwrath",
                          @"Tentacool",
                          @"Tentacruel",
                          @"Slowpoke",
                          @"Slowbro",
                          @"Seel",
                          @"Dewgong",
                          @"Shellder",
                          @"Cloyster",
                          @"Krabby",
                          @"Kingler",
                          @"Horsea",
                          @"Seadra",
                          @"Goldeen",
                          @"Seaking",
                          @"Staryu",
                          @"Starmie",
                          @"Magikarp",
                          @"Gyarados",
                          @"Lapras",
                          @"Vaporeon",
                          @"Omanyte",
                          @"Omastar",
                          @"Kabuto",
                          @"Kabutops",
                          @"Charmander",
                          @"Charmeleon",
                          @"Charizard",
                          @"Vulpix",
                          @"Ninetales",
                          @"Growlithe",
                          @"Arcanine",
                          @"Ponyta",
                          @"Rapidash",
                          @"Magmar",
                          @"Flareon",
                          @"Moltres",
                          @"Abra",
                          @"Kadabra",
                          @"Alakazam",
                          @"Slowpoke",
                          @"Slowbro",
                          @"Drowzee",
                          @"Hypno",
                          @"Starmie",
                          @"Mr. Mime",
                          @"Jynx",
                          @"Mewtwo",
                          @"Mew",
                          @"Bulbasaur",
                          @"Ivysaur",
                          @"Venusaur",
                          @"Weedle",
                          @"Kakuna",
                          @"Beedrill",
                          @"Ekans",
                          @"Arbok",
                          @"Nidoran",
                          @"Nidorina",
                          @"Nidoqueen",
                          @"Nidoran",
                          @"Nidorino",
                          @"Nidoking",
                          @"Zubat",
                          @"Golbat",
                          @"Oddish",
                          @"Gloom",
                          @"Vileplume",
                          @"Venonat",
                          @"Venomoth",
                          @"Bellsprout",
                          @"Weepinbell",
                          @"Victreebel",
                          @"Tentacool",
                          @"Tentacruel",
                          @"Grimer",
                          @"Muk",
                          @"Gastly",
                          @"Haunter",
                          @"Gengar",
                          @"Koffing",
                          @"Weezing",
                          @"Exeggcute",
                          @"Exeggutor",
                          @"Tangela",
                          @"Paras",
                          @"Parasect",
                          @"Dratini",
                          @"Dragonair",
                          @"Dragonite",
                          @"Pidgey",
                          @"Pidgeotto",
                          @"Pidgeot",
                          @"Rattata",
                          @"Raticate",
                          @"Spearow",
                          @"Fearow",
                          @"Jigglypuff",
                          @"Wigglytuff",
                          @"Meowth",
                          @"Persian",
                          @"Farfetch",
                          @"Doduo",
                          @"Dodrio",
                          @"Lickitung",
                          @"Chansey",
                          @"Kangaskhan",
                          @"Tauros",
                          @"Ditto",
                          @"Eevee",
                          @"Porygon",
                          @"Snorlax",
                          @"Geodude",
                          @"Graveler",
                          @"Golem",
                          @"Onix",
                          @"Rhyhorn",
                          @"Rhydon",
                          @"Aerodactyl",
                          @"Clefairy",
                          @"Clefable",
                          @"Mankey",
                          @"Primeape",
                          @"Machop",
                          @"Machoke",
                          @"Machamp",
                          @"Hitmonlee",
                          @"Hitmonchan"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    
    NSArray *keys = [self.pokemon allKeys];
    
    return keys.count;
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    
    NSArray *keys = [self.pokemon allKeys];
    NSString *words = keys[section];
    NSArray *words2 = [self.pokemon objectForKey:words];
    
    return words2.count;
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCell" forIndexPath:indexPath];
    
    NSArray *keys = [self.pokemon allKeys];
    NSString *words = keys[indexPath.section];
    NSArray *words2 = [self.pokemon objectForKey:words];
    
    NSString *pokemonNames = [words2 objectAtIndex:indexPath.row];
    
    cell.textLabel.text = pokemonNames;
    cell.imageView.image = [UIImage imageNamed:pokemonNames];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSArray *key = [self.pokemon allKeys];
    NSString *words = key [section];
    
    return words;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
