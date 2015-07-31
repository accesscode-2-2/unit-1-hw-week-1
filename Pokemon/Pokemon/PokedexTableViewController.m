
//
//  PokedexTableViewController.m
//  Pokemon
//
//  Created by Christian Maldonado on 7/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokedexTableViewController.h"
#import "infoViewController.h"

@interface PokedexTableViewController ()

@property (nonatomic)NSArray *tableData;
@property (nonatomic) NSString *poke;
@property (nonatomic) NSString *imageName;
@property (nonatomic)NSString *pokemanName;

           
           
@end

@implementation PokedexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.tableData = @[
                       @"Abra",
                       @"Aerodactyl",
                       @"Alakazam",
                       @"Arbok",
                       @"Arcanine",
                       @"Articuno",
                       
                       @"Beedrill",
                       @"Bellsprout",
                       @"Blastoise",
                       @"Bulbasaur",
                       @"Butterfree",
                       
                       @"Caterpie",
                       @"Chansey",
                       @"Charmander",
                       @"Charmeleon",
                       @"Charizard",
                       @"Clefable",
                       @"Clefairy",
                       @"Cloyster",
                       @"Cubone",
                       
                       @"Dewgong",
                       @"Diglett",
                       @"Ditto",
                       @"Doduo",
                       @"Dodrio",
                       @"Dragonair",
                       @"Dragonite",
                       @"Dratini",
                       @"Drowzee",
                       @"Dugtrio",
                       
                       @"Eevee",
                       @"Ekans",
                       @"Electabuzz",
                       @"Electrode",
                       @"Exeggcute",
                       @"Exeggutor",
                       
                       @"Farfetch'd",
                       @"Fearow",
                       @"Flareon",
                       
                       @"Gastly",
                       @"Gengar",
                       @"Geodude",
                       @"Gloom",
                       @"Golbat",
                       @"Goldeen",
                       @"Golduck",
                       @"Golem",
                       @"Graveler",
                       @"Grimer",
                       @"Growlithe",
                       @"Gyarados",
                       
                       @"Haunter",
                       @"Hitmonlee",
                       @"Hitmonchan",
                       @"Hypno",
                       @"Horsea",
                       
                       @"Ivysaur",
                       
                       @"Jigglypuff",
                       @"Jolteon",
                       @"Jynx",
                       
                       @"Kadabra",
                       @"Kabuto",
                       @"Kabutops",
                       @"Kangaskhan",
                       @"Kakuna",
                       @"Kingler",
                       @"Koffing",
                       @"Krabby",
                       
                       @"Lapras",
                       @"Lickitung",
                       
                       @"Mankey",
                       @"Machamp",
                       @"Machoke",
                       @"Machop",
                       @"Magikarp",
                       @"Magmar",
                       @"Magnemite",
                       @"Magneton",
                       @"Marowak",
                       @"Meowth",
                       @"Metapod",
                       @"Mew",
                       @"Mewtwo",
                       @"Moltres",
                       @"Mr. Mime",
                       @"Muk",
                       
                       
                       @"Nidoran♀",
                       @"Nidorina",
                       @"Nidoking",
                       @"Nidoran♂",
                       @"Nidorino",
                       @"Nidoqueen",
                       @"Ninetales",
                       
                       @"Oddish",
                       @"Omanyte",
                       @"Omastar",
                       @"Onix",
                       
                       @"Paras",
                       @"Parasect",
                       @"Persian",
                       @"Pidgeot",
                       @"Pidgeotto",
                       @"Pidgey",
                       @"Pikachu",
                       @"Pinsir",
                       @"Poliwag",
                       @"Poliwhirl",
                       @"Poliwrath",
                       @"Ponyta",
                       @"Porygon",
                       @"Psyduck",
                       @"Primeape",
                       
                       @"Raticate",
                       @"Raichu",
                       @"Rattata",
                       @"Rapidash",
                       @"Rhydon",
                       @"Rhyhorn",
                       
                       @"Sandshrew",
                       @"Sandslash",
                       @"Seadra",
                       @"Seaking",
                       @"Seel",
                       @"Scyther",
                       @"Shellder",
                       @"Slowbro",
                       @"Slowpoke",
                       @"Snorlax",
                       @"Spearow",
                       @"Starmie",
                       @"Staryu",
                       @"Squirtle",
                       
                       @"Tangela",
                       @"Tauros",
                       @"Tentacool",
                       @"Tentacruel",
                       
                       @"Vaporeon",
                       @"Venusaur",
                       @"Venomoth",
                       @"Venonat",
                       @"Victreebel",
                       @"Vileplume",
                       @"Voltorb",
                       @"Vulpix",
                       
                       
                       @"Wartortle",
                       @"Weedle",
                       @"Weepinbell",
                       @"Weezing",
                       @"Wigglytuff",
                       
                       @"Zapdos",
                       
                       @"Zubat",
                       ];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.tableData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokedexIdentifier" forIndexPath:indexPath];
    
    self.poke = self.tableData[indexPath.row];
    self.imageName = [self.poke lowercaseString];
    self.pokemanName = self.tableData[indexPath.row];
    
    self.imageName = [self.imageName stringByReplacingOccurrencesOfString:@" "
                                                     withString:@"_"];
    
    cell.textLabel.text = self.pokemanName;
    cell.imageView.image = [UIImage imageNamed: self.imageName];
    

    return cell;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    infoViewController *ivc = segue.destinationViewController;
    ivc.imageName = self.imageName;
    ivc.pokemonName = self.pokemanName;
    
    
}

@end


//@interface PokedexTableViewController ()
//
//@property (nonatomic) NSDictionary *tableData;
//@property (nonatomic) NSString *poke;
//@property (nonatomic) NSString *imageName;
//@property (nonatomic)NSString *pokemanName;
//
//@end
//
//
//
//
//@implementation PokedexTableViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    self.tableData = @{
//                      @"Grass" :
//                          @[@"Bulbasaur",
//                            @"Ivysaur",
//                            @"Venusaur",
//                            @"Oddish",
//                            @"Gloom",
//                            @"Vileplume",
//                            @"Paras",
//                            @"Parasect",
//                            @"Bellsprout",
//                            @"Weepinbell",
//                            @"Victreebel",
//                            @"Exeggcute",
//                            @"Exeggutor",
//                            @"Tangela",
//                            ],
//                      
//                     @"Fire" :
//                          @[@"Charmander",
//                            @"Charmeleon",
//                            @"Charizard",
//                            @"Vulpix",
//                            @"Ninetales",
//                            @"Growlithe",
//                            @"Arcanine",
//                            @"Moltres",
//                            @"Flareon",
//                            @"Ponyta",
//                            @"Rapidash",
//                            @"Magmar",
//                            ],
//                      
//                      @"Water" :
//                          @[@"Squirtle",
//                            @"Wartortle",
//                            @"Blastoise",
//                            @"Psyduck",
//                            @"Golduck",
//                            @"Poliwag",
//                            @"Poliwhirl",
//                            @"Poliwrath",
//                            @"Tentacool",
//                            @"Tentacruel",
//                            @"Slowpoke",
//                            @"Slowbro",
//                            @"Seel",
//                            @"Dewgong",
//                            @"Shellder",
//                            @"Cloyster",
//                            @"Krabby",
//                            @"Kingler",
//                            @"Horsea",
//                            @"Seadra",
//                            @"Goldeen",
//                            @"Seaking",
//                            @"Staryu",
//                            @"Starmie",
//                            @"Magikarp",
//                            @"Gyarados",
//                            @"Lapras",
//                            @"Vaporeon",
//                            @"Omanyte",
//                            @"Omastar",
//                            @"Kabuto",
//                            @"Kabutops",
//                            ],
//                      
//                      @"Bug" :
//                          @[@"Caterpie",
//                            @"Metapod",
//                            @"Butterfree",
//                            @"Weedle",
//                            @"Kakuna",
//                            @"Beedrill",
//                            @"Venonat",
//                            @"Venomoth",
//                            @"Scyther",
//                            @"Pinsir",
//                            @"Paras",
//                            @"Parasect",
//                            ],
//                     
//                      @"Electric" :
//                          @[@"Pikachu",
//                            @"Raichu",
//                            @"Magnemite",
//                            @"Magneton",
//                            @"Voltorb",
//                            @"Electrode",
//                            @"Electabuzz",
//                            @"Jolteon",
//                            @"Zapdos",
//                            ],
//                      
//                      
//                      @"Normal" :
//                          @[@"Pidgey",
//                            @"Pidgeotto",
//                            @"Pidgeot",
//                            @"Rattata",
//                            @"Raticate",
//                            @"Spearow",
//                            @"Fearow",
//                            @"Jigglypuff",
//                            @"Wigglypuff",
//                            @"Meowth",
//                            @"Persian",
//                            @"Farfetch'd",
//                            @"Doduo",
//                            @"Dodrio",
//                            @"Lickitung",
//                            @"Chansey",
//                            @"Kangaskhan",
//                            @"Tauros",
//                            @"Ditto",
//                            @"Eevee",
//                            @"Porygon",
//                            @"Snorlax",
//                            ],
//                      
//                      @"Poison" :
//                          @[@"Ekans",
//                            @"Arbok",
//                            @"Nidoran♀",
//                            @"Nidorina",
//                            @"Nidoqueen",
//                            @"Nidoran♂",
//                            @"Nidorino",
//                            @"Nidoking",
//                            @"Zubat",
//                            @"Golbat",
//                            @"Grimer",
//                            @"Muk",
//                            @"Gastly",
//                            @"Haunter",
//                            @"Gengar",
//                            @"Koffing",
//                            @"Weezing",
//                            @"Bulbasaur",
//                            @"Ivysaur",
//                            @"Venusaur",
//                            @"Oddish",
//                            @"Gloom",
//                            @"Vileplume",
//                            @"Bellsprout",
//                            @"Weepinbell",
//                            @"Victreebel",
//                            @"Tentacool",
//                            @"Tentacruel",
//                            @"Venonat",
//                            @"Venomoth",
//                            ],
//                      
//                      @"Ground" :
//                          @[@"Sandshrew",
//                            @"Sandslash",
//                            @"Diglett",
//                            @"Dugtrio",
//                            @"Geodude",
//                            @"Graveler",
//                            @"Golem",
//                            @"Onix",
//                            @"Cubone",
//                            @"Marowak",
//                            @"Rhyhorn",
//                            @"Rhydon",
//                            @"Nidoqueen",
//                            @"Nidoking",
//                            ],
//                      
//                      @"Fairy" :
//                          @[@"Clefairy",
//                            @"Clefable",
//                            @"Mr. Mime",
//                            @"Jigglypuff",
//                            @"Wigglypuff",
//                            ],
//                      
//                      @"Psychic" :
//                          @[@"Abra",
//                            @"Kadabra",
//                            @"Alakazam",
//                            @"Drowzee",
//                            @"Hypno",
//                            @"Mewtwo",
//                            @"Mew",
//                            @"Jinx",
//                            @"Exeggcute",
//                            @"Exeggutor",
//                            @"Slowpoke",
//                            @"Slowbro",
//                            @"Starmie",
//                            @"Mr. Mime",
//                            ],
//                      
//                      @"Fighting" :
//                          @[@"Mankey",
//                            @"Primeape",
//                            @"Machop",
//                            @"Machoke",
//                            @"Machamp",
//                            @"Hitmonlee",
//                            @"Hitmonchan",
//                            @"Poliwrath",
//                            ],
//                      
//                      @"Dragon" :
//                          @[@"Dratini",
//                            @"Dragonair",
//                            @"Dragonite",
//                            ],
//                      
//                      @"Flying" :
//                          @[@"Aerodactyl",
//                            @"Articuno",
//                            @"Dragonite",
//                            @"Zubat",
//                            @"Golbat",
//                            @"Farfetch'd",
//                            @"Doduo",
//                            @"Dodrio",
//                            @"Spearow",
//                            @"Fearow",
//                            @"Pidgey",
//                            @"Pidgeotto",
//                            @"Pidgeot",
//                            @"Zapdos",
//                            @"Scyther",
//                            @"Butterfree",
//                            @"Weedle",
//                            @"Kakuna",
//                            @"Beedrill",
//                            @"Gyarados",
//                            @"Mpltres",
//                            @"Charizard",
//                            ],
//                      
//                      @"Ice" :
//                          @[@"Articuno",
//                            @"Lapras",
//                            @"Dewgong",
//                            @"Cloyster",
//                            @"Jinx",
//                            ],
//                      
//                      
//                      };
//    
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//}
//
//    #pragma mark - Table view data source
//    
//    - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//        NSArray *keys = [self.tableData allKeys];
//        
//        return keys.count;
//    }
//    
//    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    
////        return self.tableData.count;
//        
//        
//        
//        NSArray *keys = [self.tableData allKeys];
//        NSString *key = keys[section];
//        NSArray *values = [self.tableData objectForKey:key];
//        return values.count;
//    }
//    
//    
//    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokedexIdentifier" forIndexPath:indexPath];
//    
////        self.poke = self.tableData[indexPath.row];
////        self.imageName = [self.poke lowercaseString];
////        self.pokemanName = self.tableData[indexPath.row];
//        
//        NSArray *keys = [self.tableData allKeys];
//        NSString *key = keys[indexPath.section];
//        NSArray *arrayOfPokeNames = [self.tableData objectForKey:key];
//        
//        NSString *fuckingWork = [arrayOfPokeNames objectAtIndex:indexPath.row];
//        cell.textLabel.text = fuckingWork;
//
//        self.imageName = [self.imageName stringByReplacingOccurrencesOfString:@" "
//                                                         withString:@"_"];
//    
//        cell.textLabel.text = self.pokemanName;
//        cell.imageView.image = [UIImage imageNamed: self.imageName];
//    
//    
//        return cell;
//    }
//    -(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//        infoViewController *ivc = segue.destinationViewController;
//        ivc.imageName = self.imageName;
//        ivc.pokemonName = self.pokemanName;
//    
//    
//}
//
//
//
//@end

