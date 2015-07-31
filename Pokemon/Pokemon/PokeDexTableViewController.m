//
//  PokeDexTableViewController.m
//  Pokemon
//
//  Created by Mesfin Bekele Mekonnen on 7/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokeDexTableViewController.h"
#import "PokemonDetailTableViewController.h"
#import "UIImageView+AFNetworking.h"
#import "PDPokemon.h"

@interface PokeDexTableViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
@property (nonatomic) PDPokemon *pdPokemon;

@end

@implementation PokeDexTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.pdPokemon = [PDPokemon new];
    [self fetchPokeDex];
    self.tableView.tableHeaderView = self.segment;
}

-(void)fetchPokeDex{
    
    [self.pdPokemon fetchFullPokedex:^(NSArray *response, NSError *error) {
        [self.tableView reloadData];
    }];
}

- (IBAction)segmentControlIndexChanged:(UISegmentedControl *)sender {
    int i=0;
    switch (self.segment.selectedSegmentIndex) {
        case 0:
            i=0;
            [self.tableView reloadData];
            break;
        case 1:
            i=1;
            [self.tableView reloadData];
            break;
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if(self.segment.selectedSegmentIndex == 0){
        return 1;
    }
    else {
        return [[self.pdPokemon pokedexByType] allKeys].count;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if(self.segment.selectedSegmentIndex == 0){
        return [self.pdPokemon alphabetizedPokemon].count;
    }
    else{
        NSArray *keys = [[self.pdPokemon pokedexByType] allKeys];
        NSString *key = keys[section];
        NSArray *values = [[self.pdPokemon pokedexByType] objectForKey:key];
        
        return values.count;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"PokeDexIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    // Configure the cell...
    if(self.segment.selectedSegmentIndex == 0){
        PDPokemon *pokemon =[[self.pdPokemon alphabetizedPokemon] objectAtIndex:indexPath.row];
        
        [PDPokemon pokemonImage:pokemon];
      //  [PDPokemon pokemonAbilities:pokemon];
        
        cell.textLabel.text  = pokemon.name;
        cell.imageView.image = pokemon.image;
    }
    else if(self.segment.selectedSegmentIndex == 1){
        
        NSArray *keys = [[self.pdPokemon pokedexByType] allKeys];
        NSString *key = keys[indexPath.section];
        NSArray *values = [[self.pdPokemon pokedexByType] objectForKey:key];
        
        PDPokemon *pokemon = [values objectAtIndex:indexPath.row];
        
        [PDPokemon pokemonImage:pokemon];
    //    [PDPokemon pokemonAbilities:pokemon];
        
        cell.textLabel.text  = pokemon.name;
        cell.imageView.image = pokemon.image;
    }
    
    return cell;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(self.segment.selectedSegmentIndex == 1){
        NSArray *keys = [[self.pdPokemon pokedexByType] allKeys];
        NSString *key = keys[section];
        return key;
    }
    return @"";
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    PDPokemon *pokemon;
    
    if(self.segment.selectedSegmentIndex == 0){
     pokemon= [[self.pdPokemon alphabetizedPokemon] objectAtIndex:indexPath.row];
    }
    else{
        NSArray *keys = [[self.pdPokemon pokedexByType] allKeys];
        NSString *key = keys[indexPath.section];
        NSArray *values = [[self.pdPokemon pokedexByType] objectForKey:key];
        
        pokemon = [values objectAtIndex:indexPath.row];
    }
    
    PokemonDetailTableViewController *detailViewController = segue.destinationViewController;
    
    detailViewController.pokemon = pokemon;
    
}
@end


