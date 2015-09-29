//
//  PokemonTableViewController.m
//  Pokemon
//
//  Created by Kaisha Jones on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonTableViewController.h"

@interface PokemonTableViewController ()

@property (nonatomic) NSDictionary *tableData;
@property (nonatomic) NSArray *pokemonArray;
@property (nonatomic) NSArray *allPokemon;
@property (nonatomic) NSArray *water;
@property (nonatomic) NSArray *fire;
@property (nonatomic) NSArray *grass;


@end

@implementation PokemonTableViewController


// Uncomment the following line to preserve selection between presentations.
// self.clearsSelectionOnViewWillAppear = NO;

// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
// self.navigationItem.rightBarButtonItem = self.editButtonItem;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    NSArray *fire = @[ @"charizard",
                       @"magmar",
                       @"flareon"
                       ];
    
    NSArray *water = @[ @"squirtle",
                        @"poliwhirl",
                        @"magikarp",
                        @"mudkip",
                        @"wartortle",
                        @"blastoise",
                        @"mega blastoise",
                        @"psyduck",
                        @"golduck",
                        @"poliwag",
                        @"staryu",
                        @"seel",
                        @"shellder",
                        @"krabby",
                        @"kingler",
                        @"horsea",
                        @"seadra",
                        @"goldeen",
                        @"seaking",
                        @"vaporeon",
                        @"totodile",
                        @"croconaw",
                        @"feraligatr",
                        @"palpitoad",
                        @"remoraid",
                        @"octillery",
                        @"suicune",
                        @"walimer",
                        @"waliord",
                        @"corphish",
                        @"feebas",
                        @"milotic",
                        @"rainy castform",
                        @"clamperl",
                        @"huntail",
                        @"gorebyss",
                        @"luvdisc",
                        @"kygore",
                        @"primal kygore",
                        @"piplup",
                        @"prinup",
                        @"prinplup",
                        @"buizel",
                        @"floatzel",
                        @"shellos",
                        @"finneon",
                        @"lumineon",
                        @"phione",
                        @"manaphy",
                        @"manaphy",
                        @"oshawott",
                        @"dewott",
                        @"samurott",
                        @"panpour",
                        @"simipour",
                        @"tympole",
                        @"basculin",
                        @"alomomola",
                        @"froakie",
                        @"frogadier",
                        @"clauncher",
                        @"clawitzer",
                        @"nope"
                        ];
    
    NSArray *grass = @[ @"scyther",
                        @"treecko",
                        ];
    
    self.tableData = @{@"fire" : fire, @"water" : water, @"grass" : grass};
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
   return [self.tableData allKeys].count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    NSArray *keys = [self.tableData allKeys];
    NSString *key = keys[section];
    NSArray *pokemonArray = [self.tableData objectForKey:key];
    return pokemonArray.count;

}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonCellIdentifier" forIndexPath:indexPath];
    
    NSArray *keys = [self.tableData allKeys];
    NSString *key = keys[indexPath.section];
    NSArray *pokemonArray = [self.tableData objectForKey:key];
    NSArray *sortedArray = [self.tableData objectForKey:key];
    
    
    NSString *name = (NSString *)pokemonArray[indexPath.row];
    cell.textLabel.text = name;
    cell.imageView.image = [UIImage imageNamed:name];
    
    
    NSArray *allPokemon = [self.allPokemon sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSString *sortedPokemon = [sortedArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = sortedPokemon;
    cell.imageView.image = [UIImage imageNamed: sortedPokemon];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *keys = [self.tableData allKeys];
    NSString *key = keys[section];
    return key;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
