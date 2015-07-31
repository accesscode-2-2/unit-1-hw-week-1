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
    
    self.pokemonTypes = @[
                          @"Grass/Poison",
                          @"Grass/Poison",
                          @"Grass/Poison",
                          @"Fire",
                          @"Fire",
                          @"Fire/Flying",
                          @"Water",
                          @"Water",
                          @"Water",
                          @"Bug",
                          @"Bug",
                          @"Bug/Flying",
                          @"Bug/Poison",
                          @"Bug/Poison",
                          @"Bug/Poison",
                          @"Normal/Flying",
                          @"Normal/Flying",
                          @"Normal/Flying",
                          @"Normal",
                          @"Normal",
                          @"Normal/Flying",
                          @"Normal/Flying",
                          @"Poison",
                          @"Poison",
                          @"Electric",
                          @"Electric",
                          @"Ground",
                          @"Ground",
                          @"Poison",
                          @"Poison",
                          @"Poison/Ground",
                          @"Poison",
                          @"Poison",
                          @"Poison/Ground",
                          @"Fairy",
                          @"Fairy",
                          @"Fire",
                          @"Fire",
                          @"Normal/Fairy",
                          @"Normal/Fairy",
                          @"Poison/Flying",
                          @"Poison/Flying",
                          @"Grass/Poison",
                          @"Grass/Poison",
                          @"Grass/Poison",
                          @"Bug/Grass",
                          @"Bug/Grass",
                          @"Bug/Poison",
                          @"Bug/Poison",
                          @"Ground",
                          @"Ground",
                          @"Normal",
                          @"Normal",
                          @"Water",
                          @"Water",
                          @"Fighting",
                          @"Fighting",
                          @"Fire",
                          @"Fire",
                          @"Water",
                          @"Water",
                          @"Water/Fighting",
                          @"Psychic",
                          @"Psychic",
                          @"Psychic",
                          @"Fighting",
                          @"Fighting",
                          @"Fighting",
                          @"Grass/Poison",
                          @"Grass/Poison",
                          @"Grass/Poison",
                          @"Water/Poison",
                          @"Water/Poison",
                          @"Rock/Ground",
                          @"Rock/Ground",
                          @"Rock/Ground",
                          @"Fire",
                          @"Fire",
                          @"Water/Psychic",
                          @"Water/Psychic",
                          @"Electric/Steel",
                          @"Electric/Steel",
                          @"Normal/Flying",
                          @"Normal/Flying",
                          @"Normal/Flying",
                          @"Water",
                          @"Water/Ice",
                          @"Poison",
                          @"Poison",
                          @"Water",
                          @"Water/Ice",
                          @"Ghost/Poison",
                          @"Ghost/Poison",
                          @"Ghost/Poison",
                          @"Rock/Ground",
                          @"Psychic",
                          @"Psychic",
                          @"Water",
                          @"Water",
                          @"Electric",
                          @"Electric",
                          @"Grass/Psychic",
                          @"Grass/Psychic",
                          @"Ground",
                          @"Ground",
                          @"Fighting",
                          @"Fighting",
                          @"Normal",
                          @"Poison",
                          @"Poison",
                          @"Ground/Rock",
                          @"Ground/Rock",
                          @"Normal",
                          @"Grass",
                          @"Normal",
                          @"Water",
                          @"Water",
                          @"Water",
                          @"Water",
                          @"Water",
                          @"Water/Psychic",
                          @"Psychic/Fairy",
                          @"Bug/Flying",
                          @"Ice/Psychic",
                          @"Electric",
                          @"Fire",
                          @"Bug",
                          @"Normal",
                          @"Water",
                          @"Water/Flying",
                          @"Water/Ice",
                          @"Normal",
                          @"Normal",
                          @"Water",
                          @"Electric",
                          @"Fire",
                          @"Normal",
                          @"Rock/Water",
                          @"Rock/Water",
                          @"Rock/Water",
                          @"Rock/Water",
                          @"Rock/Flying",
                          @"Normal",
                          @"Ice/Flying",
                          @"Electric/Flying",
                          @"Fire/Flying",
                          @"Dragon",
                          @"Dragon",
                          @"Dragon/Flying",
                          @"Psychic",
                          @"Psychic"
                          
                          ];

    
    self.pokeList = [@[
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
                      ] mutableCopy];


}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // creates extra cell for header.
    if (section == 0) {
        return 1;
    }
    return self.pokeList.count;
    
    
}

- (IBAction)onSegmentChange:(id)sender {
    for (int i = 0; i < self.pokeList.count; i++) {
        self.pokeList[i] = @"poop";
    }
    [self.tableView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        return [tableView dequeueReusableCellWithIdentifier:@"PokemonHeaderCell" forIndexPath:indexPath];
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonCell" forIndexPath:indexPath];
    
//    cell.textLabel.text = [NSString stringWithFormat:@"%@, %@", @(indexPath.section), @(indexPath.row)];
    NSString *pokemonName = self.pokeList[indexPath.row];
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
    
    return @"All pokemons";
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
