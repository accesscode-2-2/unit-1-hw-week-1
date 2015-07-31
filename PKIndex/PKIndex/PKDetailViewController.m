//
//  PKDetailViewController.m
//  PKIndex
//
//  Created by Fatima Zenine Villanueva on 7/29/15.
//  Copyright (c) 2015 apps. All rights reserved.
//

#import "PKDetailViewController.h"
#import "PKIndexList.h"
#import "AFNetworking.h"
#import "AFHTTPRequestOperation.h"

@interface PKDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *pokemonLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pokemonUIImage;
@end

@implementation PKDetailViewController

- (void)viewDidLoad {
    
    // adds label to the view controller with the pokemon's name
    self.pokemonLabel.text = self.pokemonName;
    
    // adds an image to the view controller with the pokemon's image
    
    NSInteger idx = [[PKIndexList allPokemon] indexOfObject:self.pokemonName];
    
    NSLog(@"%lu", idx);
    
    NSString *pokemonString = [[PKIndexList allPokemon] objectAtIndex:idx];
    NSLog(@"%@", pokemonString);
    NSString* stringURL = [NSString stringWithFormat:@"http://img.pokemondb.net/artwork/%@.jpg", pokemonString];
    
    
    NSString* webStringURL = [stringURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL* url = [NSURL URLWithString:webStringURL];
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    UIImage *tmpImage = [[UIImage alloc] initWithData:data];
    self.pokemonUIImage.image = tmpImage;
    
    UIImage* (^pokemonNameURLImage)(NSString *pokemonNameTag);
    pokemonNameURLImage = ^ UIImage* (NSString *pokemonNameTag) {
        NSString* stringURL = [[NSString stringWithFormat:@"http://img.pokemondb.net/artwork/%@.jpg", pokemonNameTag]lowercaseString];
        NSString* webStringURL = [stringURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSURL* url = [NSURL URLWithString:webStringURL];
        NSData *data = [[NSData alloc] initWithContentsOfURL:url];
        UIImage *tmpImage = [[UIImage alloc] initWithData:data];
        self.pokemonUIImage.image = tmpImage;
        return self.pokemonUIImage.image;
    };
    if ([pokemonString isEqualToString:@"Nidoran♀"]){
        pokemonNameURLImage(@"nidoran-f");
    } else if ([pokemonString isEqualToString:@"Nidoran♂"]) {
        pokemonNameURLImage(@"nidoran-m");
    } else if ([pokemonString isEqualToString:@"Farfetch'd"]){
        pokemonNameURLImage(@"farfetchd");
    } else if ([pokemonString isEqualToString:@"Mr. Mime"]){
        pokemonNameURLImage(@"mr-mime");
    }else {
        pokemonNameURLImage(pokemonString);
    }
    
    // api request to get more information about the pokemon
    NSString *apiURL = [NSString stringWithFormat:@"http://pokeapi.co/api/v1/pokemon/%lu", idx + 1];
    NSLog(@"%@", apiURL);
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] init];
    [manager GET:apiURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSArray *this = [responseObject objectForKey: @"types"];
        
        for (int i= 0; i < [this count]; i++){
            NSLog(@"%@", [[[responseObject objectForKey:@"types"] objectAtIndex:i] objectForKey:@"name"]);
            
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
    }];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
