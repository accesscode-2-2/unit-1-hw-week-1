//
//  pokeDexTableViewController.m
//  Pokemon
//
//  Created by Justine Gartner🙏🏼 on 7/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "pokeDexTableViewController.h"
#import "pokeDexViewController.h"
#import "Pokemon.h"

@interface pokeDexTableViewController ()

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
                            @"Nidoran (Female)",
                            @"Nidorina",
                            @"Nidoqueen",
                            @"Nidoran",
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
    
    //create a mutable array to hold the new instances of pokemon created below in the for loop
    NSMutableArray *pokemons = [NSMutableArray new];
    
    for (int i = 0; i < pokemon151.count; i++) {
        //create an instance of Pokemon with each loop
        Pokemon *pokemon = [[Pokemon alloc] init];
        //give it a name according to the names array (pokemon151)
        pokemon.name = pokemon151[i];
        //give it a type according to the types array
        pokemon.type = types[i];
        
        //Created a method to connect image file name to string name in Pokemon class
        NSString *pokeImageName = [pokemon createImageNameWith: pokemon151[i]];
        
        //give it an image by matching the string created above from the pokemon151
        pokemon.image = pokeImageName;
        //add the instance to the new pokemons mutable array
        [pokemons addObject:pokemon];
    }

    //fill the tableData array with the pokemons
    self.tableData = [NSMutableArray arrayWithArray:pokemons];
    
    //start the app with the table data arranged alphabetically by name
    [self sortTableDataArrayByName];
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //create an instance of indexPath for the table view...??...REVIEW
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    //Create a string to represent the pokeName, from an instance of Pokemon in the tableData array at each index path row
    
    Pokemon *pokemon = self.tableData [indexPath.row];
    NSString *pokeName = pokemon.name;
    
    NSString *pokeImageName = [pokemon createImageNameWith: pokeName];
    
    //create an instance of the pokeDexViewController in segue to set the pokeName & PokeImageName
    pokeDexViewController *vc = segue.destinationViewController;
    
    //pokeLabelName is a property of the pokeDexViewController(.h), getter/setter
    vc.pokeLabelName = pokeName;
    
    //pokeImage is also a property of the pokeDexViewController(.h), getter/setter
    vc.pokeImage = [UIImage imageNamed:pokeImageName];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    if (self.azTypeControlButton.selectedSegmentIndex == 0) {
        
        return 1;
    
    } else {
        
        return [Pokemon numberOfTypes:self.tableData];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (self.azTypeControlButton.selectedSegmentIndex == 0) {
        
        return self.tableData.count;
    
    } else {
        
        return [Pokemon numberOfPokemonOfEachType:self.tableData];
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokeDexCellIdentifier" forIndexPath:indexPath];
    
    Pokemon *pokemon = self.tableData [indexPath.row];
    
    NSString *pokeImageName = [pokemon createImageNameWith: pokemon.name];
    
    cell.imageView.image = [UIImage imageNamed:pokeImageName];
    
    cell.textLabel.text = pokemon.name;
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if (self.azTypeControlButton.selectedSegmentIndex == 1){
        
        //similar to the numberOfTypes method we created in Pokemon.m
        
        NSMutableArray *types = [NSMutableArray new];
        for(Pokemon *pk in self.tableData){
            
            if ([types indexOfObject:pk.type] == NSNotFound) {
                [types addObject:pk.type];
            }
        }
        
        return types[section];
    }
    
    return nil;
}

- (void)sortTableDataArrayByName {
    
    //the below is a method used to sort, suggested by t.a.Eric from stackOverflow
    //note* initWithKey:@"name" to reference the name property of the Pokemon class
    NSSortDescriptor *sortDescriptor;
    sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name"
                                                 ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *sortedArray = [self.tableData sortedArrayUsingDescriptors:sortDescriptors];
    
    self.tableData = [NSMutableArray arrayWithArray:sortedArray];
}

- (void)sortTableDataArrayByType {
    
    //the below is a method used to sort, suggested by t.a.Eric from stackOverflow
    //note* initWithKey:@"type" to reference the name property of the Pokemon class
    NSSortDescriptor *sortDescriptor;
    sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"type"
                                                 ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *sortedArray = [self.tableData sortedArrayUsingDescriptors:sortDescriptors];
    
    self.tableData = [NSMutableArray arrayWithArray:sortedArray];
}

- (IBAction)sortAZType:(id)sender {
    
    if (self.azTypeControlButton.selectedSegmentIndex == 1) {
        
        [self sortTableDataArrayByType];
    
    }else if (self.azTypeControlButton.selectedSegmentIndex == 0){
        
        [self sortTableDataArrayByName];
    }
    
    [self.tableView reloadData];
}


@end
