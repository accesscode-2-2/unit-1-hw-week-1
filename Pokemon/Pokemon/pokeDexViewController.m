//
//  pokeDexViewController.m
//  Pokemon
//
//  Created by Justine Gartner🙏🏼 on 7/29/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "pokeDexViewController.h"

@interface pokeDexViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;
@property (weak, nonatomic) IBOutlet UILabel *pokeNameLabel;

@end

@implementation pokeDexViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.pokeNameLabel.text = self.pokeLabelName;
    self.detailImageView.image = self.pokeImage;
    
}

@end
