//
//  PKImageViewController.m
//  PokemonAppHomework
//
//  Created by Jackie Meggesto on 7/30/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import "PKImageViewController.h"

@interface PKImageViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *PokemonImageView;

@property (weak, nonatomic) IBOutlet UILabel *PokemonNameLabel;


@end

@implementation PKImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.PokemonNameLabel.text = self.pokemonName;
    self.PokemonImageView.image = self.pokemonImage;
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
