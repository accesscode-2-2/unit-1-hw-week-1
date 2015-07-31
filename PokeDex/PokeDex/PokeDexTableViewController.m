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
@property (nonatomic) NSArray *allPokemon;
// pokemonAPIManager will handle all the communication with the API and the JSON parsing
@property (strong, nonatomic) PokemonAPIManager *manager;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *segmentedSortControl;
@end

@implementation PokeDexTableViewController

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
    self.allPokemon = allPokemon;
    
    // this ensures that as soon as we get the data, the table reloads. If you instead
    // only call the reloadData method without wrapping it in a dispatch_async block,
    // the user will have to tap on the tableview first before it reloads. If the
    // user never taps the screen will look blank forever. That would be LAAAME!
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

//- (IBAction)switchSort:(id)sender {
//    if (self.segmentedSortControl.)
//}

// if the data is not fetched log the error
- (void)fetchingAllPokemonFailedWithError:(NSError *)error {
    NSLog(@"Error %@, %@", error, [error localizedDescription]);
}

#pragma mark - Table view data source

// only one section for now. Might change this later depending on the sorting options I add
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.allPokemon.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCell" forIndexPath:indexPath];
    
    Pokemon *pokemon = self.allPokemon[indexPath.row];
    
    // setup text
    cell.textLabel.text = pokemon.poke_name;
    
    // setup image
    // MAY NEED TO DO SOME ASYNC OPTIMIZATION HERE, OR CACHING I DUNNO. SCROLLING IS SLLLOOOOOWWW
    NSURL *imageURL = [NSURL URLWithString:pokemon.poke_image_uri];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];

    cell.imageView.image = [UIImage imageWithData:imageData];
    
    return cell;
}


 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     
     // get the indexPath for the tapped cell
     NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
     
     // get the pokemon whose info we will render
     Pokemon *pokemon = self.allPokemon[indexPath.row];
     
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
