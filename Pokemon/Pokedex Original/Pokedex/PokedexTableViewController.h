//
//  PokedexTableViewController.h
//  Pokedex
//
//  Created by Eric Sze on 7/26/15.
//  Copyright (c) 2015 Eric Sze. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PokedexTableViewController : UITableViewController

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *imageURLString;

- (UIImage *)image;

@end
