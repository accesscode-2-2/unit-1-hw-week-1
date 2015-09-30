//
//  PKDetailViewController.m
//  InClassPokedex
//
//  Created by Christian Maldonado on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PKDetailViewController.h"

@interface PKDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation PKDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = self.pokemanName;
    
    NSString *imageName = [self.pokemanName lowercaseString];
    self.imageView.image = [UIImage imageNamed:imageName];
    
    self.navigationItem.title = self.pokemanName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
