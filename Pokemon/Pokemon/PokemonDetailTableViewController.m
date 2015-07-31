//
//  PokemonDetailTableViewController.m
//  Pokemon
//
//  Created by Mesfin Bekele Mekonnen on 7/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonDetailTableViewController.h"
#import "UIImageView+AFNetworking.h"

@interface PokemonDetailTableViewController ()

@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pokemonImageView;
@property (weak, nonatomic) IBOutlet UIImageView *blownUpImageView;
@property (weak, nonatomic) IBOutlet UITextView *abilitiesTextView;

@end

@implementation PokemonDetailTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.pokemonNameLabel.text =  self.pokemon.name;
    self.pokemonImageView.image = self.pokemon.image;
    self.blownUpImageView.image = self.pokemon.image;
    
//    for(NSString *ability in self.pokemon.abilities){
//        self.abilitiesTextView.text = [ability stringByAppendingString:@""];
//    }
    
    UIVisualEffect *blurEffect;
    blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    
    UIVisualEffectView *visualEffectView;
    visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    
    visualEffectView.frame = self.blownUpImageView.bounds;
    [self.blownUpImageView addSubview:visualEffectView];
    
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
