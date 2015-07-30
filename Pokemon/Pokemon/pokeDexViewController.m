//
//  pokeDexViewController.m
//  Pokemon
//
//  Created by Justine Gartner on 7/29/15.
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
