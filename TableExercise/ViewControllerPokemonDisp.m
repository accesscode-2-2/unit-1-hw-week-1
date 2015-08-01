//
//  ViewControllerPokemonDisp.m
//  TableExercise
//
//  Created by Varindra Hart on 7/26/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import "ViewControllerPokemonDisp.h"

@interface ViewControllerPokemonDisp ()


@property (weak, nonatomic) IBOutlet UILabel *PokemonName;
@property (weak, nonatomic) IBOutlet UIImageView *PokemonImage;

@end

@implementation ViewControllerPokemonDisp


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.PokemonName.text = [NSString stringWithFormat:@"#%ld %@",self.pkmn.index, self.pkmn.name];
//    NSURL *url = [NSURL URLWithString:self.urlString];
//    NSData *img = [NSData dataWithContentsOfURL:url];
    self.PokemonImage.image = self.pkmn.picture;
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
