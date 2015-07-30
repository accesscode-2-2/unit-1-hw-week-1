//
//  pokeDexTableViewController.m
//  Pokemon
//
//  Created by Justine Gartner on 7/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "pokeDexTableViewController.h"
#import "pokeDexViewController.h"
#import "Pokemon.h"

@interface pokeDexTableViewController ()

//@property (nonatomic) NSArray *tableData;
@property (nonatomic) NSMutableArray *tableData;
@property (weak, nonatomic) IBOutlet UISegmentedControl *azTypeControlButton;

@end

@implementation pokeDexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *pokemon151 = @[
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
    
    NSArray *types = @[@"Grass",
                       @"Grass",
                       @"Grass",
                       @"Fire",
                       @"Fire",
                       @"Fire",
                       @"Water",
                       @"Water",
                       @"Water",
                       @"Bug",
                       @"Bug",
                       @"Bug",
                       @"Bug",
                       @"Bug",
                       @"Bug",
                       @"Normal",
                       @"Normal",
                       @"Normal",
                       @"Normal",
                       @"Normal",
                       @"Normal",
                       @"Normal",
                       @"Poison",
                       @"Poison",
                       @"Electric",
                       @"Electric",
                       @"Ground",
                       @"Ground",
                       @"Poison",
                       @"Poison",
                       @"Poison",
                       @"Poison",
                       @"Poison",
                       @"Poison",
                       @"Fairy",
                       @"Fairy",
                       @"Fire",
                       @"Fire",
                       @"Normal",
                       @"Normal",
                       @"Poison",
                       @"Poison",
                       @"Grass",
                       @"Grass",
                       @"Grass",
                       @"Bug",
                       @"Bug",
                       @"Bug",
                       @"Bug",
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
                       @"Water",
                       @"Psychic",
                       @"Psychic",
                       @"Psychic",
                       @"Fighting",
                       @"Fighting",
                       @"Fighting",
                       @"Grass",
                       @"Grass",
                       @"Grass",
                       @"Water",
                       @"Water",
                       @"Rock",
                       @"Rock",
                       @"Rock",
                       @"Fire",
                       @"Fire",
                       @"Water",
                       @"Water",
                       @"Electric",
                       @"Electric",
                       @"Normal",
                       @"Normal",
                       @"Normal",
                       @"Water",
                       @"Water",
                       @"Poison",
                       @"Poison",
                       @"Water",
                       @"Water",
                       @"Ghost",
                       @"Ghost",
                       @"Ghost",
                       @"Rock",
                       @"Psychic",
                       @"Psychic",
                       @"Water",
                       @"Water",
                       @"Electric",
                       @"Electric",
                       @"Grass",
                       @"Grass",
                       @"Ground",
                       @"Ground",
                       @"Fighting",
                       @"Fighting",
                       @"Normal",
                       @"Poison",
                       @"Poison",
                       @"Ground",
                       @"Ground",
                       @"Normal",
                       @"Grass",
                       @"Normal",
                       @"Water",
                       @"Water",
                       @"Water",
                       @"Water",
                       @"Water",
                       @"Water",
                       @"Psychic",
                       @"Bug",
                       @"Ice",
                       @"Electric",
                       @"Fire",
                       @"Bug",
                       @"Normal",
                       @"Water",
                       @"Water",
                       @"Water",
                       @"Normal",
                       @"Normal",
                       @"Water",
                       @"Electric",
                       @"Fire",
                       @"Normal",
                       @"Rock",
                       @"Rock",
                       @"Rock",
                       @"Rock",
                       @"Rock",
                       @"Normal",
                       @"Ice",
                       @"Electric",
                       @"Fire",
                       @"Dragon",
                       @"Dragon",
                       @"Dragon",
                       @"Psychic",
                       @"Psychic"
                       ];
    
    
    NSMutableArray *pokemons = [NSMutableArray new];
    
    for (int i = 0; i < pokemon151.count; i++) {
        
        Pokemon *pokemon = [[Pokemon alloc] init];
        pokemon.name = pokemon151[i];
        pokemon.type = types[i];
        NSString *lowercaseName = [pokemon151[i] lowercaseString];
        NSString *pokeImageName = [lowercaseName stringByReplacingOccurrencesOfString:@"'" withString:@""];
        pokemon.image = pokeImageName;
        [pokemons addObject:pokemon];
    }
    
    //NSArray *sortedPokemon151 = [pokemon151 sortedArrayUsingSelector: @selector(caseInsensitiveCompare:)];

    self.tableData = [NSMutableArray arrayWithArray:pokemons];
    
    [self sortTableDataArrayByName];
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSString *pokeName = [self.tableData objectAtIndex: indexPath.row];
    NSString *lowercaseName = [pokeName lowercaseString];
    NSString *pokeImageName = [lowercaseName stringByReplacingOccurrencesOfString:@"'" withString:@""];
    
    pokeDexViewController *vc = segue.destinationViewController;
    vc.pokeLabelName = pokeName;
    vc.pokeImage = [UIImage imageNamed:pokeImageName];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (self.azTypeControlButton.selectedSegmentIndex == 0) {
        return 1;
    } else {
        // return the number of types
    }

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.azTypeControlButton.selectedSegmentIndex == 0) {
        return self.tableData.count;
    } else {
        // the number of pokemon of the type that corresponds to this section
    }

    return self.tableData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokeDexCellIdentifier" forIndexPath:indexPath];
    
    Pokemon *pokemon = self.tableData [indexPath.row];
    
    NSString *lowercaseName = [pokemon.name lowercaseString];
    NSString *pokeImageName = [lowercaseName stringByReplacingOccurrencesOfString:@"'" withString:@""];
    
    cell.imageView.image = [UIImage imageNamed:pokeImageName];
    
    cell.textLabel.text = pokemon.name;
    
    return cell;
}

- (void)sortTableDataArrayByName {
    NSSortDescriptor *sortDescriptor;
    sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name"
                                                 ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *sortedArray;
    sortedArray = [self.tableData sortedArrayUsingDescriptors:sortDescriptors];
    self.tableData = [NSMutableArray arrayWithArray:sortedArray];
}

- (void)sortTableDataArrayByType {
    NSSortDescriptor *sortDescriptor;
    sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"type"
                                                 ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *sortedArray;
    sortedArray = [self.tableData sortedArrayUsingDescriptors:sortDescriptors];
    self.tableData = [NSMutableArray arrayWithArray:sortedArray];
}

- (IBAction)sortAZType:(id)sender {
    if (self.azTypeControlButton.selectedSegmentIndex == 1) {
        //sort by type
        [self sortTableDataArrayByType];
    }else if (self.azTypeControlButton.selectedSegmentIndex == 0){
        [self sortTableDataArrayByName];
    }
    
    [self.tableView reloadData];
}


@end
