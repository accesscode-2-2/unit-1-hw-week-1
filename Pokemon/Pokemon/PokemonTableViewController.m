//
//  PokemonTableViewController.m
//  Pokemon
//
//  Created by Zoufishan Mehdi on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonTableViewController.h"

@interface PokemonTableViewController ()
@property(nonatomic)NSArray *allPokemon;
@property (nonatomic) NSDictionary *tableData;
@end

@implementation PokemonTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.allPokemon = @[
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
    

    // Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    NSArray *fire = @[ @"arcanine", @"charizard", @"charmander", @"charmeleon", @"flareon", @"growlithe", @"magmar", @"moltres", @"ninetales", @"ponyta", @"rapidash", @"vulpix"];
    NSArray *water = @[ @"blastoise", @"cloyster", @"dewgong", @"goldeen", @"golduck", @"gyarados", @"horsea", @"kingler", @"krabby", @"lapras", @"magicarp", @"poliwag", @"poliwhirl", @"poliwrath", @"psyduck", @"seadra", @"seaking", @"seel", @"shellder", @"slowbro", @"slowpoke", @"squirtle", @"staryu", @"vaporeon", @"wartortle"];
    NSArray *grass = @[ @"bellsprout", @"bulbasaur", @"exeggcute", @"exeggutor", @"gloom", @"ivysaur", @"oddish", @"tangela", @"venusaur", @"victreebel", @"vileplume", @"weepinbell"];
    NSArray *psychic = @[ @"abra", @"alakazam", @"drowzee", @"hypno", @"kadabra", @"mew", @"mewtwo", @"mr.mime", @"starmie"];
    NSArray *rock = @[ @"aerodactyl", @"geodude", @"golem", @"graveler", @"kabuto", @"kabutops", @"omanyte", @"omastar", @"onix"];
    NSArray *flying = @[ @"pigeot", @"pidgeotto", @"pidgey", @"spearow", @"zapdos", @"zubat"];
    NSArray *poison = @[ @"arbok", @"beedrill", @"ekans", @"golbat", @"grimer", @"koffing", @"muk", @"nidoking", @"nidoqueen", @"nidoran-f", @"nidoran", @"nidorina", @"nidorino", @"tentacool", @"tentacruel", @"weezing"];
    NSArray *ice = @[ @"articuno", @"jynx"];
    NSArray *bug = @[@"beedrill", @"caterpie", @"butterfree", @"kakuna", @"metapod", @"paras", @"parasect", @"pinsir", @"scyther", @"venomoth", @"venonat", @"weedle"];
    NSArray *normal = @[@"chansey", @"ditto", @"dodrio", @"doduo", @"eevee", @"farfetchd", @"fearow", @"jigglypuff", @"kangaskhan", @"lickitung", @"meowth", @"persian", @"porygon", @"rattatta", @"snorlax", @"tauros"];
    NSArray *fairy = @[@"clefable", @"wigglytuff"];
    NSArray *ground = @[@"cubone", @"diglett", @"dugtrio", @"marowak", @"rhydon", @"rhyhorn", @"sandshrew", @"sandslash"];
    NSArray *dragon = @[@"dragonair", @"dragonite", @"dratini"];
    NSArray *electric = @[@"electabuzz", @"electrode", @"jolteon", @"magnemite", @"magneton", @"pikachu", @"raichu", @"voltorb"];
    NSArray *ghost = @[@"gastly", @"gengar", @"haunter"];
    NSArray *fighting = @[@"hitmonchan", @"machamp", @"machoke", @"machop", @"mankey", @"primeape"];
    
    
    self.tableData = @{@"fire" : fire, @"water" : water, @"grass" : grass, @"psychic" : psychic, @"rock" : rock, @"flying" : flying, @"poison" : poison, @"ice" : ice, @"bug" : bug, @"normal" : normal, @"fairy" : fairy, @"ground" : ground, @"dragon" : dragon, @"electric" : electric, @"ghost" : ghost, @"fighting" : fighting };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
-(IBAction)segmentbutton:(id)sender {
      NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if (segmentController.selectedSegmentIndex == 0) {
        NSString * pokemonName = self.allPokemon[indexPath.row];
        PokemonDetailViewController *vc = segue.destinationViewController;
        
        vc.pokemonName = pokemonName;
        }
    else {
        NSArray * keys = [self.tableData allKeys];
        NSString *key = keys[indexPath.section];
        NSArray * pokemonArray = [self.tableData objectForKey:key];
        NSString * pokemonName = pokemonArray[indexPath.row];
        PokemonDetailViewController *vc = segue.destinationViewController;
        
        vc.pokemonName = pokemonName;
        
        }
}
    

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    
    
-(IBAction)segmentbutton:(id)sender {
    if (segmentController.selectedSegmentIndex == 0) {
        return 1;
    }
    else {
          return [self.tableData allKeys].count;
    }
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
-(IBAction)segmentbutton:(id)sender {
    if (segmentController.selectedSegmentIndex == 0){
         return self.allPokemon.count;
    }
    else {
        NSArray *keys = [self.tableData allKeys];
        NSString *key = keys[section];
        NSArray *pokemonArray = [self.tableData objectForKey:key];
        return pokemonArray.count;
    }
  }
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonIdentifier" forIndexPath:indexPath];
    
-(IBAction)segmentbutton:(id)sender {
    if (segmentController.selectedSegmentIndex == 0) {
        NSArray *sortedArray = [self.allPokemon sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        NSString *sortedPokemon = [sortedArray objectAtIndex:indexPath.row];
        
        cell.textLabel.text = sortedPokemon;
        cell.imageView.image = [UIImage imageNamed: sortedPokemon];
    }
    else {
        NSArray *keys = [self.tableData allKeys];
        NSString *key = keys[indexPath.section];
        NSArray *pokemonArray = [self.tableData objectForKey:key];
        
        NSString *pokemon = [pokemonArray objectAtIndex:indexPath.row];
        
        cell.textLabel.text = pokemon;
        
        cell.imageView.image = [UIImage imageNamed: pokemon];
        
    }
 
        }
        
        return cell;
    }


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
-(IBAction)segmentbutton: (id)sender {
    if (segmentController.selectedSegmentIndex == 0) {
        return nil;
    }
    else {
        NSArray *keys = [self.tableData allKeys];
        NSString *key = keys[section];
        return key;
    }

}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


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
