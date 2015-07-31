//
//  PokesTableViewController.m
//  PokedexHW
//
//  Created by Z on 7/30/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import "PokesTableViewController.h"

@interface PokesTableViewController ()

@end

@implementation PokesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PokesDatabase *myPokesDB = [[PokesDatabase alloc] init];
    self.pokesDatabase = myPokesDB;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    
    NSDictionary *db = self.pokesDatabase.pokemon;
    NSArray *pokemonNames = [db allKeys];
    
    return pokemonNames.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    NSDictionary *db = self.pokesDatabase.pokemon;
    NSArray *pokemonNames = [db allKeys];
    
    return pokemonNames.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PKTableIdentifier" forIndexPath:indexPath];
    
    NSLog(@"%@",indexPath);
    
    NSDictionary *db = self.pokesDatabase.pokemon;
    NSArray *keys = [db allKeys];
    NSString *key = [keys objectAtIndex:indexPath.section];
    NSArray *pokemonTypes = [db objectForKey:key];
    NSString *type = [pokemonTypes objectAtIndex:indexPath.row];
    
    // Configure the cell...
    cell.textLabel.text = type;
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
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
