//
//  PokemonTableViewController.h
//  Pokemon
//
//  Created by Zoufishan Mehdi on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PokemonTableViewController : UITableViewController {
    IBOutlet UISegmentedControl *segmentController;

}

-(IBAction)segmentbutton:(id)sender;



@end
