//
//  PKIndexTableViewController.m
//  PKIndex
//
//  Created by Fatima Zenine Villanueva on 7/27/15.
//  Copyright (c) 2015 apps. All rights reserved.
//

#import "PKIndexTableViewController.h"
#import "PKIndexList.h"
#import "PKDetailViewController.h"
#import "AFHTTPRequestOperation.h"
#import "AFNetworking.h"


@interface PKIndexTableViewController ()
@property (nonatomic) NSDictionary *pokemonIndex;
@property (strong, nonatomic) IBOutlet UITableView *table;
@property (strong, nonatomic) IBOutlet UISegmentedControl *clickMenu;
@property(nonatomic,readonly) CGSize size;
@end

@implementation PKIndexTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.normalType = [[NSMutableArray alloc]init];
    self.fightingType = [[NSMutableArray alloc]init];
    self.flyingType = [[NSMutableArray alloc]init];
    self.poisonType = [[NSMutableArray alloc]init];
    self.groundType = [[NSMutableArray alloc]init];
    self.rockType = [[NSMutableArray alloc]init];
    self.bugType = [[NSMutableArray alloc]init];
    self.ghostType = [[NSMutableArray alloc]init];
    self.steelType = [[NSMutableArray alloc]init];
    self.fireType = [[NSMutableArray alloc]init];
    self.waterType = [[NSMutableArray alloc]init];
    self.grassType = [[NSMutableArray alloc]init];
    self.electricType = [[NSMutableArray alloc]init];
    self.psychicType = [[NSMutableArray alloc]init];
    self.iceType = [[NSMutableArray alloc]init];
    self.dragonType = [[NSMutableArray alloc]init];
    self.fairyType = [[NSMutableArray alloc]init];
    
    self.pokemonIndex = @{ @"Pokemon":[PKIndexList allPokemon] };
    
    
    NSIndexPath *indexPath;
    NSArray *keys = [self.pokemonIndex allKeys];
    NSString *key = keys[indexPath.section];
    NSArray *pokemonArray = [self.pokemonIndex objectForKey:key];
    NSLog(@"%@", pokemonArray);
    
    for (int i = 0; i < [pokemonArray count]; i++) {
        
        int idx = i;
        NSString *apiURL = [NSString stringWithFormat:@"http://pokeapi.co/api/v1/pokemon/%u", idx + 1];
        NSLog(@"%@", apiURL);
        AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] init];
        [manager GET:apiURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
            NSLog (@"Index: %u", i);
            NSLog(@"Attack: %@", [responseObject objectForKey:@"attack"]);
            NSLog(@"Name: %@",[responseObject objectForKey:@"name"]);
            NSArray *this = [responseObject objectForKey: @"types"];
            
            
            // Declare the block variable
            void (^addCharacterInName)(NSString *pokemonName, NSMutableArray *type, NSString *pokeNameCharacter);
            
            // Create and assign the block
            addCharacterInName =  ^void(NSString *pokemonName, NSMutableArray *type, NSString *pokeNameCharacter) {
                
//                if ([pokemonString isEqualToString:@"Nidoran♀"]){
//                    pokemonNameURLImage(@"nidoran-f");
//                } else if ([pokemonString isEqualToString:@"Nidoran♂"]) {
//                    pokemonNameURLImage(@"nidoran-m");
//                } else if ([pokemonString isEqualToString:@"Farfetch'd"]){
//                    pokemonNameURLImage(@"farfetchd");
//                } else if ([pokemonString isEqualToString:@"Mr. Mime"]){
//                    pokemonNameURLImage(@"mr-mime");
//                
                NSString *pokemonNameThis = [responseObject objectForKey:@"name"];
                if ([pokemonNameThis isEqualToString: pokemonName]){
                    [type addObject: pokeNameCharacter];
                    [type removeObject: pokemonName];
                    NSLog(@"%@", pokemonNameThis);
                }
                
            };
            // Call the block
            
           

            
            for (int i= 0; i < [this count]; i++){
                
                NSString *pokemonTypeString = [[[responseObject objectForKey:@"types"] objectAtIndex:i] objectForKey:@"name"];
                NSLog(@"Type: %@", pokemonTypeString);
                
                // Farfetch'd
                
                // Mr. Mime
                
                // Nidoran♂
                
                if ([pokemonTypeString isEqualToString:@"normal"]){
                    [self.normalType addObject:[responseObject objectForKey:@"name"]];
                    addCharacterInName(@"Farfetchd", self.normalType, @"Farfetch'd");
                    NSLog(@"Normal Type: %@", self.normalType);
                } else if ([pokemonTypeString isEqualToString:@"fighting"]){
                    [self.fightingType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.fightingType);
                } else if ([pokemonTypeString isEqualToString:@"flying"]){
                    [self.flyingType addObject:[responseObject objectForKey:@"name"]];
                    addCharacterInName(@"Farfetchd", self.flyingType, @"Farfetch'd");
                    NSLog(@"Normal Type: %@", self.flyingType);
                } else if ([pokemonTypeString isEqualToString:@"poison"]){
                    [self.poisonType addObject:[responseObject objectForKey:@"name"]];
                    addCharacterInName(@"Nidoran-f", self.poisonType, @"Nidoran♀");
                    addCharacterInName(@"Nidoran-m", self.poisonType, @"Nidoran♂");
                    NSLog(@"Normal Type: %@", self.poisonType);
                } else if ([pokemonTypeString isEqualToString:@"ground"]){
                    [self.groundType addObject:[responseObject objectForKey:@"name"]];
                    addCharacterInName(@"Nidoran-f", self.groundType, @"Nidoran♀");
                    addCharacterInName(@"Nidoran-m", self.groundType, @"Nidoran♂");
                    NSLog(@"Normal Type: %@", self.groundType);
                } else if ([pokemonTypeString isEqualToString:@"rock"]){
                    [self.rockType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.rockType);
                } else if ([pokemonTypeString isEqualToString:@"bug"]){
                    [self.bugType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.bugType);
                } else if ([pokemonTypeString isEqualToString:@"ghost"]){
                    [self.ghostType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.ghostType);
                } else if ([pokemonTypeString isEqualToString:@"steel"]){
                    [self.steelType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.steelType);
                } else if ([pokemonTypeString isEqualToString:@"fire"]){
                    [self.fireType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.fireType);
                } else if ([pokemonTypeString isEqualToString:@"water"]){
                    [self.waterType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.waterType);
                } else if ([pokemonTypeString isEqualToString:@"grass"]){
                    [self.grassType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.grassType);
                } else if ([pokemonTypeString isEqualToString:@"electric"]){
                    [self.electricType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.electricType);
                } else if ([pokemonTypeString isEqualToString:@"psychic"]){
                    [self.psychicType addObject:[responseObject objectForKey:@"name"]];
                    addCharacterInName(@"Mr-mime", self.psychicType, @"Mr. Mime");
                    NSLog(@"Normal Type: %@", self.psychicType);
                } else if ([pokemonTypeString isEqualToString:@"ice"]){
                    [self.iceType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.iceType);
                } else if ([pokemonTypeString isEqualToString:@"dragon"]){
                    [self.dragonType addObject:[responseObject objectForKey:@"name"]];
                    NSLog(@"Normal Type: %@", self.dragonType);
                } else if ([pokemonTypeString isEqualToString:@"fairy"]){
                    [self.fairyType addObject:[responseObject objectForKey:@"name"]];
                    addCharacterInName(@"Mr-mime", self.fairyType, @"Mr. Mime");
                    NSLog(@"Normal Type: %@", self.fairyType);
                }
            }
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"%@", error);
        }];
    }
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.pokemonIndex allKeys].count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *keys = [self.pokemonIndex allKeys];
    NSString *key = keys[section];
    NSArray *pokemonArray = [self.pokemonIndex objectForKey:key];
    
    return pokemonArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonTable" forIndexPath:indexPath];
    NSArray *keys = [self.pokemonIndex allKeys];
    NSString *key = keys[indexPath.section];
    NSArray *pokemonArray = [self.pokemonIndex objectForKey:key];
    
    cell.textLabel.text = (NSString *)pokemonArray[indexPath.row];
    
    NSString *pokemonString = pokemonArray[indexPath.row];
    
    NSString* (^pokemonNameURL)(NSString *pokemonNameTag);
    pokemonNameURL = ^ NSString* (NSString *pokemonNameTag) {
        return pokemonNameTag;
    };
    UITableViewCell* (^pokemonNameURLImage)(NSString *pokemonNameTag);
    pokemonNameURLImage = ^ UITableViewCell* (NSString *pokemonNameTag) {
        NSString* stringURL = [[NSString stringWithFormat:@"http://img.pokemondb.net/artwork/%@.jpg", pokemonNameTag]lowercaseString];
        NSString* webStringURL = [stringURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSURL* url = [NSURL URLWithString:webStringURL];
        NSData *data = [[NSData alloc] initWithContentsOfURL:url];
        UIImage *tmpImage = [[UIImage alloc]initWithData:data];
        cell.imageView.image = tmpImage;
        cell.imageView.image = tmpImage;
        CGSize itemSize = CGSizeMake(40, 40);
        UIGraphicsBeginImageContext(itemSize);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return cell;
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
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *keys = [self.pokemonIndex allKeys];
    NSString *key = keys[section];
    return key;
}

- (IBAction)changeClick:(UISegmentedControl *)sender {
    
        // OG INDEX SORT
    if(self.clickMenu.selectedSegmentIndex == 0) {
        self.pokemonIndex = @{@"Pokemon": [PKIndexList allPokemon] };
    
        // TYPE SORT
    } else if(self.clickMenu.selectedSegmentIndex == 1) {
        self.view.backgroundColor = [UIColor greenColor];

        
        self.pokemonIndex = @{ @"Normal": self.normalType,
                               @"Fighting": self.fightingType,
                               @"Flying": self.flyingType,
                               @"Poison": self.poisonType,
                               @"Ground": self.groundType,
                               @"Poison": self.poisonType,
                               @"Rock": self.rockType,
                               @"Bug": self.bugType,
                               @"Ghost": self.ghostType,
                               @"Steel": self.steelType,
                               @"Fire": self.fireType,
                               @"Water": self.waterType,
                               @"Grass": self.grassType,
                               @"Electric": self.electricType,
                               @"Psychic": self.psychicType,
                               @"Ice": self.iceType,
                               @"Dragon": self.dragonType,
                               @"Fairy": self.fairyType
                            };
        [self.tableView reloadData];
        
    // A-Z Sort
    } else if(self.clickMenu.selectedSegmentIndex == 2) {
        self.view.backgroundColor = [UIColor blueColor];
        self.sortedPokemon = [[PKIndexList allPokemon] sortedArrayUsingSelector:@selector(compare:)];
        NSLog(@"%@", self.sortedPokemon);
        self.pokemonIndex = @{ @"Pokemon":self.sortedPokemon };
        
    }
    
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender NS_AVAILABLE_IOS(5_0){
    NSLog(@"preparing");
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSArray *keys = [self.pokemonIndex allKeys];
    NSString *key = keys[indexPath.section];
    NSArray *pokemonArray = [self.pokemonIndex objectForKey:key];
    NSString *pokemonName = (NSString *)pokemonArray[indexPath.row];
    PKDetailViewController *vc = segue.destinationViewController;
    vc.pokemonName= pokemonName;
}

@end
