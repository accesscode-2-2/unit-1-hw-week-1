//
//  PokesTableViewController.h
//  PokedexHW
//
//  Created by Z on 7/30/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PokesDatabase.h"

@interface PokesTableViewController : UITableViewController

@property (nonatomic) PokesDatabase *pokesDatabase;

@end
