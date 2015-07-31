//
//  infoViewController.m
//  Pokemon
//
//  Created by Christian Maldonado on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "infoViewController.h"

@interface infoViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameOfPoke;
@property (weak, nonatomic) IBOutlet UIImageView *pictureOfPoke;

@end

@implementation infoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.nameOfPoke.text = self.pokemonName;
    self.pictureOfPoke.image = [UIImage imageNamed: self.imageName];

    
    
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    infoViewController *ivc = segue.destinationViewController;
    ivc.imageName = self.imageName;
    ivc.pokemonName = self.pokemonName;
    
    
}





//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
