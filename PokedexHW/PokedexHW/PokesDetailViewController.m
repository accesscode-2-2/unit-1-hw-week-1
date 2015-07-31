//
//  PokesDetailViewController.m
//  PokedexHW
//
//  Created by Z on 7/31/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import "PokesDetailViewController.h"

@interface PokesDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *spriteImageView;
@property (weak, nonatomic) IBOutlet UIImageView *typeImageView;


@end

@implementation PokesDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = self.name;
    self.spriteImageView.image = self.spriteImage;
    self.typeImageView.image = self.typeImage;
    
    
    // Do any additional setup after loading the view.
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
