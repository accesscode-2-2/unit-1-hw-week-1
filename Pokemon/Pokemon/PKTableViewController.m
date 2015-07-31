//
//  PKTableViewController.m
//  Pokemon
//
//  Created by Christella on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKTableViewController.h"
#import "PKTypesTableViewController.h"
#import "PKViewController.h"
#import "PKNames.h"

@interface PKTableViewController ()

@property (nonatomic) NSMutableArray *pokemon;

@end

@implementation PKTableViewController

@synthesize  segmentedControl;

-(void) viewDidLoad {
    [super viewDidLoad];
    
    
    // initialize the data in self.pokemon
    self.navigationItem.title = @"Pokemon";
    self.pokemon = [[NSMutableArray alloc]init];
    for (NSString *name in [PKNames allPokemon]) {
        PKNames *pokeInDex = [[PKNames alloc]init];
        pokeInDex.name = name;
        pokeInDex.ImageURLString = [name lowercaseString];
        [self.pokemon addObject:pokeInDex];
    }
    
}

-(IBAction) segmentedControlChanged {
   /*
    switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            PKTableViewController;
            break;
        case 1:
            PKTableViewController = PKTypesTableViewController;
            break;
        default:
            break;
    }
    
    */
    
    if(segmentedControl.selectedSegmentIndex == 0)
    {
        // code for the first button
    }


}





-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    PKNames *pokeInDex = [self.pokemon objectAtIndex:indexPath.row];
    
    PKViewController *vc = segue.destinationViewController;
    
    vc.pokeInDex = pokeInDex;
    
}

#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.pokemon.count;
}


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokeInDexCellIndentifier" forIndexPath:indexPath];
    
    PKNames *pokeInDex = [self.pokemon objectAtIndex:indexPath.row];
    
    cell.textLabel.text = pokeInDex.name;
    cell.imageView.image = [pokeInDex image];
    
    return cell;
}

/*

-(void) dealloc {
    
    [segmentedControl release];
    [super dealloc];
}
*/




@end
