//
//  PokeFuckinMonTableViewController.m
//  InClassPokedex
//
//  Created by Christian Maldonado on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokeFuckinMonTableViewController.h"
#import "PKPokedex.h"
#import "PKDetailViewController.h"

@interface PokeFuckinMonTableViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (nonatomic)PKPokedex *model;

@end

@implementation PokeFuckinMonTableViewController

#pragma mark - Life cycle methods



- (void)viewDidLoad {
    [super viewDidLoad];

    self.model = [[PKPokedex alloc]init];
    [self.model intializeData];
    
    self.navigationItem.title = @"Pokedex";

}

#pragma mark IBAction

- (IBAction)segmentSelected:(UISegmentedControl *)sender {
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (self.segmentedControl.selectedSegmentIndex == 0){
        return 1;
    } else {
        return [self.model.typePokedex allKeys].count;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  
    if (self.segmentedControl.selectedSegmentIndex == 0){
        return self.model.aToZPokemon.count;
    } else {
        NSArray *keys = [self.model.typePokedex allKeys];
        NSString *key = [keys objectAtIndex:section];
        NSArray *values = [self.model.typePokedex objectForKey:key];
        return values.count;
    }

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonCellIdentifier" forIndexPath:indexPath];

    
    
    NSString *pokemonName = [self objectForIndexPath:indexPath];
    cell.textLabel.text = [self objectForIndexPath:indexPath];
    cell.imageView.image = [UIImage imageNamed:[pokemonName lowercaseString]];
    return cell;
    
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (self.segmentedControl.selectedSegmentIndex == 1){
        NSArray *keys = [self.model.typePokedex allKeys];
        return keys [section];
    } else {
        return nil;
    }
}


#pragma mark - Naviation
 
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NSString *pokemonName = [self objectForIndexPath:indexPath];
 
    
    
    PKDetailViewController *detailViewController = segue.destinationViewController;
    detailViewController.pokemanName = pokemonName;
}

-(NSString *)objectForIndexPath:(NSIndexPath *)indexPath {
    
    if (self.segmentedControl.selectedSegmentIndex == 0){
        return self.model.aToZPokemon[indexPath.row];
    }else {
        NSArray *keys = [self.model.typePokedex allKeys];
        NSString *key = [keys objectAtIndex:indexPath.section];
        NSArray *values = [self.model.typePokedex objectForKey:key];
        return values[indexPath.row];
    }
    
}

@end
