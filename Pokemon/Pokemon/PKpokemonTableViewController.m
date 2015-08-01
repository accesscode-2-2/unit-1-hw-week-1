//
//  pokemonPracticeTableViewController.m
//  pokemonPracticeProject
//
//  Created by Bereket  on 7/31/15.
//  Copyright (c) 2015 Bereket . All rights reserved.
//

#import "PKpokemonTableViewController.h"

@interface PKpokemonTableViewController ()
@property (nonatomic) NSDictionary *pokemon;

@property (weak, nonatomic) IBOutlet UISegmentedControl *pokeListOrganizer;

@end

@implementation PKpokemonTableViewController

-(void)pokemonGroupedAtoZ{
    self.pokemon= @{ @"Alphabetical": @[@"Abra",@"Aerodactyl", @"Alakazam", @"Arbok", @"Arcanine", @"Articuno", @"Beedrill",@"Bellsprout", @"Blastoise", @"Bulbasaur", @"Butterfree", @"Caterpie", @"Chansey", @"Charizard", @"Charmander", @"Charmeleon", @"Clefable", @"Clefairy", @"Cloyster", @"Cubone", @"Dewgong", @"Diglett", @"Ditto", @"Dodrio", @"Doduo", @"Dragonair", @"Dragonite", @"Dratini", @"Drowzee", @"Dugtrio", @"Eevee", @"Electabuzz", @"Electrode", @"Exeggcute", @"Farfetchd", @"Fearow", @"Flareon", @"Gastly", @"Gengar", @"Gengar", @"Geodude", @"Gloom", @"Golbat", @"Goldeen", @"Golduck", @"Golem", @"Graveler", @"Growlithe", @"Gyarados", @"Haunter", @"Hitmonchan", @"Hitmonlee", @"Horsea", @"Hypno", @"Ivysaur", @"Jigglypuff", @"Jolteon", @"Jynx", @"Kabuto", @"Kabutops", @"Kadabra", @"Kakuna", @"Kangaskhan", @"Kingler", @"Koffing", @"Krabby", @"Lapras", @"Lickitung", @"Machamp", @"Machoke", @"Machop", @"Magikarp", @"Magmar", @"Magnemite", @"Magneton", @"Mankey", @"Marowak", @"Meowth", @"Metapod", @"Mew", @"Mewtwo", @"Moltres", @"Mr-Mime", @"Muk", @"Nidoking", @"Nidoqueen", @"Nidoran-f", @"Nidoran", @"Nidorina", @"Nidorino", @"Ninetales", @"Oddish", @"Omanyte", @"Omastar", @"Onix", @"Paras", @"Parasect", @"Persian", @"Pidgeot", @"Pidgeotto", @"Pidgey", @"Pikachu", @"Pinsir", @"Poliwag", @"Poliwhirl", @"Poliwrath", @"Ponyta", @"Porygon", @"Primeape", @"Psyduck", @"Raichu", @"Rapidash", @"Ratatta", @"Raticate", @"Rattata", @"Rhydon", @"Rhyhorn", @"Sandshrew", @"Sandslash", @"Scyther", @"Seadra", @"Seaking", @"Seel", @"Shellder", @"Slowbro", @"Slowpoke", @"Snorlax", @"Spearow", @"Squirtle", @"Starmie", @"Staryu", @"Tangela", @"Tauros", @"Tentacool", @"Tentacruel", @"Vaporeon", @"Venomoth", @"Venonat", @"Venusaur", @"Victreebel", @"Vileplume", @"Voltorb", @"Vulpix", @"Wartortle", @"Weedle", @"Weepinbell", @"Weezing", @"Wigglytuff", @"Zapdos", @"Zubat"]};
}

-(void)pokemonGroupedByType{
    self.pokemon= @{
                    
                    @"Water" : @[
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
                            @"wartortle",],
                    
                    @"Fire" :
                        @[@"arcanine",
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
                          @"vulpix",],
                    
                    @"Rock" : @[
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
                            @"rhyhorn",],
                    
                    @"Fighting" :
                        @[
                            @"hitmonchan",
                            @"hitmonlee",
                            @"machamp",
                            @"machoke",
                            @"machop",
                            @"mankey",
                            @"poliwrath",
                            @"primeape",],
                    
                    @"Psychic" :
                        @[
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
                            @"slowpoke",],
                    
                    
                    @"Ghost" : @[
                            @"gastly",
                            @"haunter",
                            @"Gengar",],
                    
                    @"Flying" : @[
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
                            @"zubat",],
                    
                    @"Electric" :
                        @[
                            @"electabuzz",
                            @"electrode",
                            @"jolteon",
                            @"magnemite",
                            @"magneton",
                            @"pikachu",
                            @"raichu",
                            @"voltorb",
                            @"zapdos"],
                    
                    @"Normal" : @[
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
                            ],
                    
                    @"Bug" : @[@"beedrill",
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
                               @"weedle"],
                    
                    @"Dragon" : @[@"dratini", @"dragonair", @"dragonite", @"gyarados"],
                    };
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    if (self.pokeListOrganizer.selectedSegmentIndex==1) {
        [self pokemonGroupedByType];
        [self.tableView reloadData];
        
    }
    else{
        [self pokemonGroupedAtoZ];
        [self.tableView reloadData];
    }
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (IBAction)segmentedControlChanged:(UISegmentedControl *)sender {
    if(self.pokeListOrganizer.selectedSegmentIndex == 0)
    {
        
        [self pokemonGroupedAtoZ];
        [self.tableView reloadData];
        
    }
    else {
        [self pokemonGroupedByType];
        [self.tableView reloadData];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSArray *keys=[self.pokemon allKeys];
    
    return keys.count;
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *keys= [self.pokemon allKeys];
    NSString *key=keys[section]; //gives us the key
    NSArray *values= [self.pokemon objectForKey:key];
    return values.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"carIdentifier" forIndexPath:indexPath];
    
    
    NSArray *keys= [self.pokemon allKeys];
    NSString *key=keys[indexPath.section];
    NSArray *arrayOfCarNames=[self.pokemon objectForKey:key];
    
    NSString *carName= [arrayOfCarNames objectAtIndex:indexPath.row];
    
    cell.textLabel.text=carName;
    
    // Configure the cell...
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSArray *keys=[self.pokemon allKeys];
    NSString *key=keys[section];
    
    return key;
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
