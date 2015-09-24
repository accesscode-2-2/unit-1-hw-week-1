//
//  PokemonViewController.m
//  Pokemon
//
//  Created by Eric Sanchez on 9/21/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonViewController.h"
#import "PokemonDetailViewController.h"
#import "PokeData.h"

@interface PokemonViewController ()
@property (nonatomic) PokeData *model;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation PokemonViewController
	//initialize data
- (void)viewDidLoad {
	[super viewDidLoad];
	self.model = [[PokeData alloc] init];
	[self.model initializeData];
	
	self.navigationItem.title = @"PokeData";
}


	//setting number of sections to number of items in dictionary
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	if (self.segmentedControl.selectedSegmentIndex == 0) {
		return 1;
	}else{
	
	
	return 	[self.model.typePokemon allKeys].count;
		
	    }
		}
	
	//setting number of rows to alphabetized pokemon
	- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
		if (self.segmentedControl.selectedSegmentIndex == 0) {
			return self.model.alphaPokemon.count;
		} else {
	
	
	NSLog(@"numberOfRowsInSection: %lu", section);
	NSArray *currentSection = [self.model.typePokemon.allKeys objectAtIndex: section];
	NSLog(@"currentSection = %@", currentSection);
	NSArray *pokemonInSection = [self.model.typePokemon objectForKey:currentSection];
	return pokemonInSection.count;
	}
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:  (NSIndexPath *)indexPath
{
	//static NSString *CellIdentifier = @"cellIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
	
	NSArray *currentSection = [self.model.typePokemon.allKeys objectAtIndex: indexPath.section];
	NSArray *pokemonInSection = [self.model.typePokemon objectForKey: currentSection];
	cell.textLabel.text = [pokemonInSection objectAtIndex: indexPath.row];
	
	return cell;
}
	//group them into sections
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

	NSArray *currentSection = [self.model.typePokemon allKeys];
	NSString *key = currentSection[section];
	return key;
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	//Passing the data!
	//NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
	//NSString *pokemonName = [self objectForIndexPath]
	NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
	NSString *pokemonName = [self objectForIndexPath:indexPath];
	
	PokemonDetailViewController *detailViewController = segue.destinationViewController;
	detailViewController.pokemonName = [pokemonName capitalizedString];
	
	
}
- (IBAction)segmentedConrolTapped:(id)sender {
	[self.tableView reloadData];
}

- (NSString *)objectForIndexPath:(NSIndexPath *)indexPath {
	if (self.segmentedControl.selectedSegmentIndex == 0) {
		
		return self.model.alphaPokemon[indexPath.row];
	} else {
		NSArray *keys = [self.model.typePokemon allKeys];
		NSString *key = [keys objectAtIndex:indexPath.section];
		NSArray *values = [self.model.typePokemon objectForKey:key];
		return values[indexPath.row];
		
		//got this from the in class project.
		
	}
}
@end
	