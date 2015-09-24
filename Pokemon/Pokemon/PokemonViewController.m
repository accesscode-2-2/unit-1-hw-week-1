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

@implementation PokemonViewController

- (void)viewDidLoad {
}


	//setting number of sections to number of items in dictionary
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	
	return 	self.pokemon.count;
		
	    }
	
	
	- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	
	NSLog(@"numberOfRowsInSection: %lu", section);
	NSArray *currentSection = [self.pokemon.allKeys objectAtIndex: section];
	NSLog(@"currentSection = %@", currentSection);
	NSArray *pokemonInSection = [self.pokemon objectForKey:currentSection];
	return pokemonInSection.count;
	}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:  (NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"cellIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
	
	//NSString *pokemonName = [self objectForIndexPath:indexPath];
	//cell.textLabel.text = pokemonName;
	//cell.imageView.image = [UIImage imageNamed:[pokemonName lowercaseString]];
	NSArray *currentSection = [self.pokemon.allKeys objectAtIndex: indexPath.section];
	NSArray *pokemonInSection = [self.pokemon objectForKey: currentSection];
	cell.textLabel.text = [pokemonInSection objectAtIndex: indexPath.row];
	
	return cell;
}
	//group them into sections
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

	NSArray *keys = [self.pokemon allKeys];
	NSString *key = keys[section];
	return key;
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
	return [@"a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.q.r.s.t.u.v.w.x.y.z" componentsSeparatedByString:@"."];
	}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	
}
@end
	