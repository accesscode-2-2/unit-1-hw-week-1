//

//  PKPokemonTableViewController.m
//  PKPokedex
//
//  Created by Kaisha Jones on 8/1/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKPokemonTableViewController.h"
#import "PokemonDetailViewController.h"
#import "PokemonArray.h"


@interface PKPokemonTableViewController ()

@property (nonatomic) PokemonArray *model;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segementedControl;

@end



@implementation PKPokemonTableViewController

#pragma mark - Life cycle methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[PokemonArray alloc]init];
    [self.model initializeData];
    
    self.navigationItem.title = @"Pokedex";
    
    

}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    if (self.segementedControl.selectedSegmentIndex == 0) {
        return 1;
    }else {
        return [self.model.typePokedex allKeys].count;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.segementedControl.selectedSegmentIndex == 0) {
        return self.model.aToZPokedex.count;;
    } else {
        NSArray *keys = [self.model.typePokedex allKeys];
        NSString *key = [keys objectAtIndex:section];
        NSArray *values = [self.model.typePokedex objectForKey:key];
        return values.count;
        
    }
    
}
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonCellIdentifier" forIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    if (self.segementedControl.selectedSegmentIndex == 0) {
//        NSString *pokemonName = [self objectForIndexPath:indexPath];
//        cell.textLabel.text = pokemonName;
//        cell.imageView.image = [UIImage imageNamed:[pokemonName lowercaseString]];
//        
//        return cell;
//        
////        NSString *pokemonName = self.model.aToZPokedex[indexPath.row];
////        cell.textLabel.text = pokemonName;
//    } else {
//        NSArray *keys = [self.model.typePokedex allKeys];
//        NSString *key = [keys objectAtIndex:indexPath.section];
//        NSArray *values = [self.model.typePokedex objectForKey:key];
//        NSString *pokemonName = values[indexPath.row];
//        cell.textLabel.text = [pokemonName capitalizedString];
//        
//    }
//    
//    return cell;





- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonCellIdentifier" forIndexPath:indexPath];
    if (self.model.typePokedex) {
        NSString *pokemonName = [self objectForIndexPath:indexPath];
        cell.textLabel.text = pokemonName;
        cell.imageView.image = [UIImage imageNamed:pokemonName];
        
        return cell;
        
        
    }
    else {
        NSArray * keys = [self.model.typePokedex allKeys];
        
        NSString * key = keys[indexPath.section];
        
        NSArray * pokemons = [self.model.typePokedex objectForKey:key];
        NSString *pokemonName =pokemons[indexPath.row];
        
        cell.textLabel.text = pokemonName;
        cell.imageView.image = [UIImage imageNamed:pokemonName];
        //cell.imageView.image =
        
        // Configure the cell...
        
        return cell;
    }
}
//}

// group the into sections
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSArray *currentSection = [self.model.typePokedex allKeys];
    NSString *key = currentSection[section];
    return key;
}


-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return [@"A.B.C.D.E.F.G.H.I.J.K.L.M.N.O.P.Q.R.S.T.U.V.W.X.Y.Z.#" componentsSeparatedByString:@"."];
}
    

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"preparing...");
    
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NSString *pokemanName = [self objectForIndexPath:indexPath];
    
    PokemonDetailViewController *detailViewController = segue.destinationViewController;
    detailViewController.pokemonName = [pokemanName capitalizedString];
    
}


#pragma mark - IB Action


- (IBAction)segmentSelected:(UISegmentedControl *)sender {
    
    [self.tableView reloadData];
}

- (NSString *)objectForIndexPath:(NSIndexPath *) indexPath {
    
    if (self.segementedControl.selectedSegmentIndex == 0) {
        return self.model.aToZPokedex[indexPath.row];
    } else {
        NSArray *keys = [self.model.typePokedex allKeys];
        NSString *key = [keys objectAtIndex:indexPath.section];
        NSArray *values = [self.model.typePokedex objectForKey:key];
        return values[indexPath.row];
       
    }
}
@end
