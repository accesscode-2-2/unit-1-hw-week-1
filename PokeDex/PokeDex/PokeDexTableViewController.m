//
//  PokeDexTableViewController.m
//  PokeDex
//
//  Created by Elber Carneiro on 7/29/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import "OrderedDictionary.h"
#import "PokeDexDetailViewController.h"
#import "PokeDexTableViewController.h"
#import "Pokemon.h"
#import "PokemonAPICommunicator.h"
#import "PokemonAPIManager.h"
#import "PokemonOrderedDictionaryBuilder.h"

@interface PokeDexTableViewController ()
@property (nonatomic) OrderedDictionary *allPokemonAlphabetical;
@property (nonatomic) OrderedDictionary *allPokemonByType;
@property (nonatomic) OrderedDictionary *pokemonToDisplay;
// pokemonAPIManager will handle all the communication with the API and the JSON parsing
@property (strong, nonatomic) PokemonAPIManager *manager;
@property (weak, nonatomic) IBOutlet UIView *loadingActivityView;
@property (weak, nonatomic) IBOutlet UILabel *loadingLabel;
@property (strong, nonatomic) IBOutlet UITableView *pokeDexTableView;
@property (nonatomic) NSArray *pokemonIndex;
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

#pragma mark - Table view data source

// if data is successfully fetched, load it into the tableview
- (void)didReceiveAllPokemon:(NSArray *)allPokemon {
    PokemonOrderedDictionaryBuilder *ODB = [[PokemonOrderedDictionaryBuilder alloc] init];
    
    // SETUP ALPHA ORDER FIRST AND LOAD IT BY DEFAULT
    self.pokemonIndex = [[UILocalizedIndexedCollation currentCollation] sectionIndexTitles];
    NSLog(@"%@", self.pokemonIndex);
    self.allPokemonAlphabetical = [ODB setupAllPokemonAlphabetical:allPokemon
                                                        withIndex:self.pokemonIndex];
    self.pokemonToDisplay = self.allPokemonAlphabetical;
    
    // SETUP DICTIONARY OF POKEMON BY TYPE
    self.allPokemonByType = [ODB setupAllPokemonByType:allPokemon];
    
    // LOAD DATA
    // this ensures that as soon as we get the data, the table reloads. If you instead
    // only call the reloadData method without wrapping it in a dispatch_async block,
    // the user will have to tap on the tableview first before it reloads. If the
    // user never taps the screen will look blank forever. That would be LAAAME!
    dispatch_async(dispatch_get_main_queue(), ^{
        self.loadingLabel.alpha = 0;
        [self.loadingActivityView removeFromSuperview];
        self.segmentedSortControl.alpha = 1;
        
        [self.tableView reloadData];
    });
    
}

// if the data is not fetched log the error
- (void)fetchingAllPokemonFailedWithError:(NSError *)error {
    NSLog(@"Error %@, %@", error, [error localizedDescription]);
}

// Returns localized a-z array for index titles
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return self.pokemonIndex;
}

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
    cell.imageView.image = pokemon.poke_image;
    
    return cell;
}

// Method to add dictionary keys as titles for each section
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSArray *keys = [self.pokemonToDisplay allKeys];
    NSString *key = keys[section];
    
    return key;
}

// method to connect index titles to section titles
- (NSInteger)tableView:(UITableView *)tableView
sectionForSectionIndexTitle:(NSString *)title
               atIndex:(NSInteger)index {
    return [[UILocalizedIndexedCollation currentCollation] sectionForSectionIndexTitleAtIndex:index];
}


 #pragma mark - Navigation

// method to change sorting
- (IBAction)segmentedControlTapped:(id)sender {
    if (self.segmentedSortControl.selectedSegmentIndex == 0) {
        self.pokemonIndex = [[UILocalizedIndexedCollation currentCollation] sectionIndexTitles];
        self.pokemonToDisplay = self.allPokemonAlphabetical;
        [self.tableView reloadData];
    } else {
        self.pokemonIndex = nil;
        self.pokemonToDisplay = self.allPokemonByType;
        [self.tableView reloadData];
    }
}
 
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
     UIImage *pokemonImage = pokemon.poke_image;
     
     // initialize next viewController
     PokeDexDetailViewController *vc = segue.destinationViewController;
     
     // set destination viewController properties
     vc.pokemonName = pokemonName;
     vc.pokemonImageURI = pokemonImageURI;
     vc.pokemonID = pokemonID;
     vc.pokemonTypes = pokemonTypes;
     vc.pokemonImage = pokemonImage;
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
