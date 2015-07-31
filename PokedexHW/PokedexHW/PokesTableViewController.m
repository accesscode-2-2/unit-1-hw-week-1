//
//  PokesTableViewController.m
//  PokedexHW
//
//  Created by Z on 7/30/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import "PokesTableViewController.h"
#import "PokesDetailViewController.h"

@interface PokesTableViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation PokesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PokesDatabase *myPokesDB = [[PokesDatabase alloc] init];
    [myPokesDB makeAllThePokes];
    self.pokesDatabase = myPokesDB;
    NSLog(@"%@",self.pokesDatabase.pokemon);
    
    NSLog(@"%@",self.pokesDatabase.AZpokemon);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    
    //sort by type
    if ([self.segmentedControl selectedSegmentIndex] == 1) {
        NSArray *keys = [self.pokesDatabase.pokemon allKeys];
        return [keys count];
    }
    
    else { //sort A-Z
        return 1;
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    NSInteger numberOfRowsInSection = 0;
    
    //sort by type
    if ([self.segmentedControl selectedSegmentIndex] == 1) {
        NSArray *keys = [self.pokesDatabase.pokemon allKeys];
        NSString *key = [keys objectAtIndex:section];
        NSArray *pokemonNames = [self.pokesDatabase.pokemon objectForKey:key];
        numberOfRowsInSection = [pokemonNames count];
    }
    //sort A-Z
    else{
        NSArray *allPokemon = self.pokesDatabase.AZpokemon;
        numberOfRowsInSection = [allPokemon count];
//        return [[self.pokesDatabase.pokemon allValues] count];
    }

    return numberOfRowsInSection;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PKTableIdentifier" forIndexPath:indexPath];
    
//    NSLog(@"%@",indexPath);
    
 
    
    NSString *name = [[NSString alloc] init];
    if ([self.segmentedControl selectedSegmentIndex] == 1) {
        NSArray *keys = [self.pokesDatabase.pokemon allKeys];
        NSString *key = [keys objectAtIndex:indexPath.section];
        NSArray *pokemonNamesOfType = [self.pokesDatabase.pokemon objectForKey:key];
        name = [pokemonNamesOfType objectAtIndex:indexPath.row];
    }
    else{
        name = [self.pokesDatabase.AZpokemon objectAtIndex:indexPath.row];
    }
    
    // Configure the cell...
    cell.textLabel.text = [name capitalizedString];
    cell.imageView.image = [UIImage imageNamed:name];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if ([self.segmentedControl selectedSegmentIndex] == 1) {
    NSArray *keys = [self.pokesDatabase.pokemon allKeys];
    NSString *key = [keys objectAtIndex:section];
    return key;
    }
    else{
        return @"Gotta Catch 'em All";
    }
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSLog(@"Preparing");
        NSLog(@"%ld",(long)[self.segmentedControl selectedSegmentIndex]);
    
    PokesDetailViewController *detailVC = segue.destinationViewController;
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSArray *types = [self.pokesDatabase.pokemon allKeys];
    NSString *type = [types objectAtIndex:indexPath.section];
    NSArray *names = [self.pokesDatabase.pokemon objectForKey:type];
    NSString *name = [names objectAtIndex:indexPath.row];
    
    detailVC.name = [name capitalizedString];
    detailVC.spriteImage = [UIImage imageNamed:name];
    detailVC.typeImage = [UIImage imageNamed:type];
    
}
- (IBAction)segmentedControlValueChanged:(UISegmentedControl *)sender {
    [self.tableView reloadData];
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
