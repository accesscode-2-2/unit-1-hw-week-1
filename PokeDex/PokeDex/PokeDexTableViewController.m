//
//  PokeDexTableViewController.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import "PokeDexDetailViewController.h"
#import "PokeDexTableViewController.h"

#import "Pokemon.h"
#import "PokemonAPICommunicator.h"
#import "PokemonAPIManager.h"

@interface PokeDexTableViewController ()
@property (nonatomic) NSDictionary *allPokemonAlphabetical;
@property (nonatomic) NSDictionary *allPokemonByType;
@property (nonatomic) NSDictionary *pokemonToDisplay;
// pokemonAPIManager will handle all the communication with the API and the JSON parsing
@property (strong, nonatomic) PokemonAPIManager *manager;
@end

@implementation PokeDexTableViewController
@synthesize segmentedSortControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // setup the manager and all the delegates so all the classes can talk to each other
    self.manager = [[PokemonAPIManager alloc] init];
    self.manager.communicator = [[PokemonAPICommunicator alloc] init];
    self.manager.communicator.delegate = (id<PokemonAPICommunicatorDelegate>) self.manager;
    self.manager.delegate = (id<PokemonAPIManagerDelegate>) self;
    
    // after manager is set up, fetch the data and create array of all Pokemon
    [self.manager fetchAllPokemon];
}

// if data is successfully fetched, load it into the tableview
- (void)didReceiveAllPokemon:(NSArray *)allPokemon {
    
    // SETUP ALPHA ORDER FIRST AND LOAD IT BY DEFAULT
    
    NSMutableDictionary *allPokemonAlphabetical = [[NSMutableDictionary alloc] init];
    [allPokemonAlphabetical setObject:allPokemon forKey:@"all"];
    self.allPokemonAlphabetical = allPokemonAlphabetical;
    NSLog(@"%@", self.allPokemonAlphabetical);
    
    self.pokemonToDisplay = self.allPokemonAlphabetical;
    
    // this ensures that as soon as we get the data, the table reloads. If you instead
    // only call the reloadData method without wrapping it in a dispatch_async block,
    // the user will have to tap on the tableview first before it reloads. If the
    // user never taps the screen will look blank forever. That would be LAAAME!
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
    
    
    // SETUP DICTIONARY OF POKEMON BY TYPE
    
    // get an array of all unique pokemon types
    NSMutableOrderedSet *pokemonTypes = [[NSMutableOrderedSet alloc] init];
    for (Pokemon *p in allPokemon) {
        // there might be an nsmutableorderedset method that would eliminate need for this for loop
        for (NSString *t in p.poke_types) {
            [pokemonTypes addObject:t];
        }
    }
    NSLog(@"%@", pokemonTypes);
    
    // create dictionary of pokemon using the types as keys
    // start with blank dictionary
    NSMutableDictionary *allPokemonByType = [[NSMutableDictionary alloc] init];
    
    // add keys with blank arrays as values
    for (NSString *key in pokemonTypes) {
        [allPokemonByType setObject:[[NSMutableArray alloc]init] forKey:key];
    }
    
    // if a key matches a pokemon's poke_type, add the pokemon to
    // the array for the corresponding key. This means pokemon with multiple
    // types should be represented in multiple arrays
    for (NSString *key in pokemonTypes) {
        for (Pokemon *p in allPokemon) {
            for (NSString *t in p.poke_types) {
                if ([key isEqualToString:t]) {
                    [allPokemonByType[key] addObject:p];
                }
            }
        }
    }
    self.allPokemonByType = allPokemonByType;
    NSLog(@"%@", self.allPokemonByType);


}

// if the data is not fetched log the error
- (void)fetchingAllPokemonFailedWithError:(NSError *)error {
    NSLog(@"Error %@, %@", error, [error localizedDescription]);
}

// method to change sorting
- (IBAction)segmentedControlTapped:(id)sender {
    if (self.segmentedSortControl.selectedSegmentIndex == 0) {
        self.pokemonToDisplay = self.allPokemonAlphabetical;
        [self.tableView reloadData];
    } else {
        self.pokemonToDisplay = self.allPokemonByType;
        [self.tableView reloadData];
    }
}


#pragma mark - Table view data source

// only one section for now. Might change this later depending on the sorting options I add
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    NSArray *sections = [self.pokemonToDisplay allKeys];
    return sections.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    NSArray *keys = [self.pokemonToDisplay allKeys];
    NSString *key = keys[section];
    NSArray *pokemonInSection = self.pokemonToDisplay[key];
    return pokemonInSection.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCell" forIndexPath:indexPath];
    
    NSArray *keys = [self.pokemonToDisplay allKeys];
    NSString *key = keys[indexPath.section];
    NSArray *pokemonInSection = self.pokemonToDisplay[key];
    Pokemon *pokemon = pokemonInSection[indexPath.row];
    
    // setup text
    cell.textLabel.text = pokemon.poke_name;
    
    // setup image
    // MAY NEED TO DO SOME ASYNC OPTIMIZATION HERE, OR CACHING I DUNNO. SCROLLING IS SLLLOOOOOWWW
    NSURL *imageURL = [NSURL URLWithString:pokemon.poke_image_uri];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];

    cell.imageView.image = [UIImage imageWithData:imageData];
    
    return cell;
}

// Method to add dictionary keys as titles for each section
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSArray *keys = [self.pokemonToDisplay allKeys];
    NSString *key = keys[section];
    
    return key;
}


 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     
     // get the indexPath for the tapped cell
     NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
     
     // get the pokemon whose info we will render
     NSArray *keys = [self.pokemonToDisplay allKeys];
     NSString *key = keys[indexPath.section];
     NSArray *pokemonInSection = self.pokemonToDisplay[key];
     Pokemon *pokemon = pokemonInSection[indexPath.row];
     
     // get the pokemon info
     NSString *pokemonName = pokemon.poke_name;
     NSString *pokemonImageURI = pokemon.poke_image_uri;
     NSUInteger pokemonID = pokemon.poke_id;
     NSArray *pokemonTypes = pokemon.poke_types;
     
     // initialize next viewController
     PokeDexDetailViewController *vc = segue.destinationViewController;
     
     // set destination viewController properties
     vc.pokemonName = pokemonName;
     vc.pokemonImageURI = pokemonImageURI;
     vc.pokemonID = pokemonID;
     vc.pokemonTypes = pokemonTypes;
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


@end
