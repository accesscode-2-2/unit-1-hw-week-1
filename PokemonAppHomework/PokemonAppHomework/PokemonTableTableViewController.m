//
//  PokemonTableTableViewController.m
//  PokemonAppHomework
//
//  Created by Jackie Meggesto on 7/30/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import "PKImageViewController.h"
#import "PokemonTableTableViewController.h"
#import "PKAlphabeticalDataSource.h"
#import "PKTypeDataSource.h"


@interface PokemonTableTableViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *PKSegmentedControl;


@property (nonatomic) id<UITableViewDataSource>dataSource;



@end

@implementation PokemonTableTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = [[PKAlphabeticalDataSource alloc] init];
    self.tableView.dataSource = self.dataSource;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    PKAlphabeticalDataSource *myDataSource = [[PKAlphabeticalDataSource alloc] init];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSString *pokemonName = myDataSource[pokemonName];
    NSString *pokemonImageName = [pokemonName lowercaseString];
    UIImage *pokemonImage = [UIImage imageNamed:pokemonImageName];
    PKImageViewController *pvc = segue.destinationViewController;
    pvc.pokemonName = pokemonName;
    pvc.pokemonImage = pokemonImage;
                              
                              
                              }

- (IBAction)PKSegmentedControl:(UISegmentedControl*)sender {
    [self.tableView reloadData];
    
    if (sender.selectedSegmentIndex == 0) {
        self.dataSource = [[PKAlphabeticalDataSource alloc] init];
    } else {
        self.dataSource = [[PKTypeDataSource alloc] init];
    }
    
    self.tableView.dataSource = self.dataSource;
    [self.tableView reloadData];

    
    
    
}






@end
