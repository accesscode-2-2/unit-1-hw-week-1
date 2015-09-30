//
//  DetailViewController.h
//  Pokemon
//
//  Created by Umar on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) NSArray *pokemonArray;
@property (nonatomic) NSString *pokemonName;

@end
