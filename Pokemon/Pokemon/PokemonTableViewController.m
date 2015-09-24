//
//  PokemonTableViewController.m
//  Flags
//
//  Created by Michael Kavouras on 7/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//


#import "PokemonTableViewController.h"
#import "PokemonDetailViewController.h"

@interface PokemonTableViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *aToZorTypeControl;

@property (nonatomic) NSDictionary *pokemonListDictionary;
@property (nonatomic) NSMutableArray *allPokemon;

@property (nonatomic) BOOL showAllPokemonList;

@end



@implementation PokemonTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.showAllPokemonList = NO;
    
    self.pokemonListDictionary = @{
                                
                         
                         @"Fire": @[@"Charmander",
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
                                    @"Moltres"
                                    ],
                         
                         
                         
                         @"Grass": @[@"Bulbasaur",
                                     @"Ivysaur",
                                     @"Venusaur",
                                     @"Oddish",
                                     @"Gloom",
                                     @"Vileplume",
                                     @"Bellsprout",
                                     @"Weepinbell",
                                     @"Victreebel",
                                     @"Exeggcute",
                                     @"Exeggutor",
                                     @"Tangela"
                                     ],
                         
                         
                         
                         @"Bug": @[@"Caterpie",
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
                                   @"Pinsir"
                                   ],
                         
                                   
                                   
                       @"Poison": @[@"Ekans",
                                    @"Arbok",
                                    @"Nidoran-f",
                                    @"Nidorina",
                                    @"Nidoqueen",
                                    @"Nidoran",
                                    @"Nidorino",
                                    @"Nidoking",
                                    @"Zubat",
                                    @"Golbat",
                                    @"Grimer",
                                    @"Muk",
                                    @"Koffing",
                                    @"Weezing"
                                    ],
                         
                         
                                   
                         @"Normal": @[@"Pidgey",
                                      @"Pidgeotto",
                                      @"Pidgeot",
                                      @"Rattata",
                                      @"Raticate",
                                      @"Spearow",
                                      @"Fearow",
                                      @"Jigglypuff",
                                      @"Meowth",
                                      @"Persian",
                                      @"Farfetchd",
                                      @"Doduo",
                                      @"Dodrio",
                                      @"Lickitung",
                                      @"Chansey",
                                      @"Kangaskhan",
                                      @"Tauros",
                                      @"Ditto",
                                      @"Eevee",
                                      @"Porygon",
                                      @"Snorlax"
                                      ],
              
                         
                                   
                           @"Water": @[@"Squirtle",
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
                                       @"Vaporeon"
                                       ],
                 
                         
                         @"Electric": @[@"Pikachu",
                                        @"Raichu",
                                        @"Magnemite",
                                        @"Magneton",
                                        @"Voltorb",
                                        @"Electrode",
                                        @"Electabuzz",
                                        @"Jolteon",
                                        @"Zapdos"
                                        ],
                         
                         
                         @"Ground": @[@"Sandshrew",
                                      @"Sandslash",
                                      @"Diglett",
                                      @"Dugtrio",
                                      @"Cubone",
                                      @"Marowak",
                                      @"Rhyhorn",
                                      @"Rhydon"
                                      ],
                         
                         
                         @"Fighting": @[@"Mankey",
                                        @"Primeape",
                                        @"Machop",
                                        @"Machoke",
                                        @"Machamp",
                                        @"Hitmonlee",
                                        @"Hitmonchan"
                                        ],
                         
                         
                         @"Psychic": @[@"Abra",
                                       @"Kadabra",
                                       @"Alakazam",
                                       @"Drowzee",
                                       @"Hypno",
                                       @"Mr-Mime",
                                       @"Mewtwo",
                                       @"Mew"
                                       ],
                         
                         
                         @"Rock": @[@"Geodude",
                                    @"Graveler",
                                    @"Golem",
                                    @"Onix",
                                    @"Omanyte",
                                    @"Omastar",
                                    @"Kabuto",
                                    @"Kabutops",
                                    @"Aerodactyl"
                                    ],
                                   
                       
                         
                       @"Psychic": @[@"Abra",
                                     @"Kadabra",
                                     @"Alakazam",
                                     @"Drowzee",
                                     @"Hypno",
                                     @"Mr-Mime",
                                     @"Mewtwo",
                                     @"Mew"
                                     ],
                         
                         
                         @"Ghost": @[@"Gastly",
                                     @"Haunter",
                                     @"Gengar"
                                     ],
                         
                         
                         @"Ice": @[@"Jynx",
                                   @"Articuno"],
                         
                         
                         @"Dragon": @[@"Dratini",
                                      @"Dragonair"
                                      ]
                         };
    
    
    
    NSArray *types = [self.pokemonListDictionary allKeys];
    NSString *type = types[0];
    NSArray *pokemon = [self.pokemonListDictionary objectForKey:type];
    
    self.allPokemon = [[NSMutableArray alloc] init];
    self.allPokemon = [pokemon mutableCopy];
    
    for (int i =1; i < [types count]; i++) {
        [self.allPokemon addObjectsFromArray:[self.pokemonListDictionary objectForKey:types[i]]];
    }
    
    
    [self.tableView reloadData];
    
}



//choose what the segmented control will do, show all pokemon or not

- (IBAction)switchChange:(UISegmentedControl *)sender {
    
    NSInteger selectedSegment = self.aToZorTypeControl.selectedSegmentIndex;
    
    if (selectedSegment == 0) {
        [self.tableView reloadData];
        self.showAllPokemonList = NO;
        
    } else {
        [self.tableView reloadData];
        self.showAllPokemonList = YES;
    }
}



//calculate # of sections based on the dictionary

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    if (self.showAllPokemonList) {
        
        return 1;
        
    } else {
        
        return [self.pokemonListDictionary count];
    }
    
}



//calculate how many rows in each section there should be

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    if (self.showAllPokemonList){
        
        return [self.allPokemon count];
        
    } else {
        
        NSArray *types = [self.pokemonListDictionary allKeys];
        NSString *type = types[section];
        NSArray *pokemon = [self.pokemonListDictionary objectForKey:type];
        
        return [pokemon count];
    }
}



//section header titles based on the dictionary

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (self.showAllPokemonList) {
        NSArray *types = [self.pokemonListDictionary allKeys];
        NSString *type = types[section];
        
        return type;
    }
    else {
        
        return @"Pokedex";
    }
    
    
}





-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    if (self.showAllPokemonList) {
        
        NSString *pokemonName = self.allPokemon[indexPath.row];
        NSString *pokemonImageName = [pokemonName lowercaseString];
        
        PokemonDetailViewController *pokemonInfo = segue.destinationViewController;
        pokemonInfo.pokemonName = pokemonName;
        pokemonInfo.pokemonPhoto = [UIImage imageNamed:pokemonImageName];
        
    } else {
        NSArray *types = [self.pokemonListDictionary allKeys];
        NSString *type = types[indexPath.section];
        
        NSArray *pokemon = [self.pokemonListDictionary objectForKey:type];
        NSString *pokemonName = pokemon[indexPath.row];
        NSString *pokemonImageName = [pokemonName lowercaseString];
        
        PokemonDetailViewController *pokemonInfo = segue.destinationViewController;
        pokemonInfo.pokemonName = pokemonName;
        pokemonInfo.pokemonPhoto = [UIImage imageNamed:pokemonImageName];
    }
}






//what does the cell contain

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonCellIdentifier" forIndexPath:indexPath];
    
    
    if (self.showAllPokemonList) {
        NSArray *types = [self.pokemonListDictionary allKeys];
        NSString *type = types[indexPath.section];
        NSArray *pokemon = [self.pokemonListDictionary objectForKey:type];
        NSString  *pokemonName = pokemon[indexPath.row];
        NSString *pokemonImageName = [pokemonName lowercaseString];
        
        cell.textLabel.text = pokemonName;
        cell.imageView.image = [UIImage imageNamed:pokemonImageName];
        return cell;
        
    }
    
    else {
        
        NSArray *sortedArray = [self.allPokemon sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        NSString *sortedPokemon = [sortedArray objectAtIndex:indexPath.row];
        NSString *pokemonImageName = [sortedPokemon lowercaseString];
        
        cell.textLabel.text = sortedPokemon;
        cell.imageView.image = [UIImage imageNamed: pokemonImageName];
        return cell;
    }
    
}

@end
