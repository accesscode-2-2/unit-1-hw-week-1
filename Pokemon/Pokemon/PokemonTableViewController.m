//
//  PokemonTableViewController.m
//  Pokemon
//
//  Created by Jovanny Espinal on 7/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonTableViewController.h"
#import "PokemonDetailViewController.h"

@interface PokemonTableViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *allOrTypeSwitch;
@property (nonatomic) NSDictionary *pokemonList;
@property (nonatomic) NSMutableArray *allPokemon;
@property (nonatomic) BOOL showAllPokemon;
@end

@implementation PokemonTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.showAllPokemon = NO;
    
    self.pokemonList = @{@"Grass": @[@"Bulbasaur",
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
                         @"Pyschic": @[@"Abra",
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
    
    NSArray *types = [self.pokemonList allKeys];
    NSString *type = types[0];
    
    NSArray *pokemon = [self.pokemonList objectForKey:type];
    
    self.allPokemon = [[NSMutableArray alloc] init];
    self.allPokemon = [pokemon mutableCopy];
    
    
    for (int i = 1; i < [types count]; i++) {
        [self.allPokemon addObjectsFromArray:[self.pokemonList objectForKey:types[i]]];
    }
    
    
}


- (IBAction)switchChange:(UISegmentedControl *)sender {
   
    
    NSInteger selectedSegment = self.allOrTypeSwitch.selectedSegmentIndex;
    
    if (selectedSegment == 0) {
        [self.tableView reloadData];
        self.showAllPokemon = NO;
        
    }
    else {
        [self.tableView reloadData];
        self.showAllPokemon = YES;
        
    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    if (self.showAllPokemon) {
        
        NSString *pokemonName = self.allPokemon[indexPath.row];
        NSString *pokemonImageName = [pokemonName lowercaseString];
        
        PokemonDetailViewController *pokemonInfo = segue.destinationViewController;
        pokemonInfo.pokemonName = pokemonName;
        pokemonInfo.pokemonImage = [UIImage imageNamed:pokemonImageName];
    }
    else {
        NSArray *types = [self.pokemonList allKeys];
        NSString *type = types[indexPath.section];
        
        NSArray *pokemon = [self.pokemonList objectForKey:type];
        NSString *pokemonName = pokemon[indexPath.row];
        NSString *pokemonImageName = [pokemonName lowercaseString];
        
        PokemonDetailViewController *pokemonInfo = segue.destinationViewController;
        pokemonInfo.pokemonName = pokemonName;
        pokemonInfo.pokemonImage = [UIImage imageNamed:pokemonImageName];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    if (self.showAllPokemon) {
        return 1;
    }
    else {
        
        return [self.pokemonList count];
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (self.showAllPokemon){
        return [self.allPokemon count];
    }
    else {
        NSArray *types = [self.pokemonList allKeys];
        NSString *type = types[section];
        NSArray *pokemon = [self.pokemonList objectForKey:type];
        
        return [pokemon count];
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (self.showAllPokemon) {
        NSArray *types = [self.pokemonList allKeys];
        NSString *type = types[section];
        
        return type;
    }
    else {
        
        return @"All Pokemon";
    }
        
    
    }




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonCellIdentifier" forIndexPath:indexPath];
    
    
    
    
    if (self.showAllPokemon) {
        NSArray *types = [self.pokemonList allKeys];
        NSString *type = types[indexPath.section];
        NSArray *pokemon = [self.pokemonList objectForKey:type];
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
