//
//  ACExerciseTableViewController.m
//  TableExercise
//
//  Created by Varindra Hart on 7/26/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import "ACExerciseTableViewController.h"
#import "ViewControllerPokemonDisp.h"
#import "AFNetworking.h"
#import "Pokemon.h"
#import "PokeData.h"

@interface ACExerciseTableViewController ()

@property (nonatomic) NSArray *pokemonAZ;
@property (nonatomic) PokeData *data;
@property (nonatomic) NSSortDescriptor *byIndex;
@property (nonatomic) NSSortDescriptor *byAlpha;
@property (nonatomic) NSMutableArray *pkData;
@property (nonatomic) NSArray *pokemonByID;
@property (nonatomic) NSDictionary *types;
@property (nonatomic) NSDictionary *imgDex;
@property (nonatomic) NSMutableDictionary *pokeDex;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

@end

@implementation ACExerciseTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"PokéDex";
    self.data = [[PokeData alloc] init];
    NSMutableArray *water = [[NSMutableArray alloc]init];
    self.types = @{@"water" : water,
                   @"fire" : [[NSMutableArray alloc] init], @"grass" :[[NSMutableArray alloc] init], @"electric" :[[NSMutableArray alloc] init], @"steel" :[[NSMutableArray alloc] init], @"rock" :[[NSMutableArray alloc] init], @"psychic":[[NSMutableArray alloc] init] ,@"poison":[[NSMutableArray alloc] init], @"normal":[[NSMutableArray alloc] init], @"ice":[[NSMutableArray alloc] init], @"ground":[[NSMutableArray alloc] init], @"ghost":[[NSMutableArray alloc] init],@"flying":[[NSMutableArray alloc] init], @"fairy":[[NSMutableArray alloc] init], @"dragon":[[NSMutableArray alloc] init], @"bug":[[NSMutableArray alloc] init]
                   };
    self.byIndex = [[NSSortDescriptor alloc] initWithKey:@"index" ascending:YES];
    self.byAlpha = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
    

    
    
    [self fetch];
    
}
- (IBAction)segmentClicked:(UISegmentedControl *)sender {
    
    if (sender.selectedSegmentIndex == 1 && self.pokemonAZ == nil) {
        self.pokemonAZ = [[NSArray alloc] initWithArray:[self.data.pokemonData_api sortedArrayUsingDescriptors:@[self.byAlpha]]];
    }
    
    if (sender.selectedSegmentIndex ==2 && self.pokeDex == nil){
        [self sortByType];
    }
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    if(self.segment.selectedSegmentIndex == 0 || self.segment.selectedSegmentIndex == 1){
        return 1;
    }
    else{
    return [[self.types allKeys]count];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    if(self.segment.selectedSegmentIndex ==2){
        NSString *key = [[self.types allKeys]objectAtIndex:section];
        return [[self.types objectForKey:key]count];
    }
    else{
    return [self.data.pokemonData_api count];
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonNameCell" forIndexPath:indexPath];
    
    if(self.segment.selectedSegmentIndex == 0){
    self.pkData = [[NSMutableArray alloc] initWithArray:self.pokemonByID];
     //Configure the cell...
    }
    if(self.segment.selectedSegmentIndex == 1){
         self.pkData = [[NSMutableArray alloc] initWithArray:self.pokemonAZ];
    }
    if(self.segment.selectedSegmentIndex == 2){
        NSString *category = [[self.types allKeys] objectAtIndex:indexPath.section];
        self.pkData = [self.types objectForKey:category];
    }
    Pokemon *tempPKMN = self.pkData[indexPath.row];
  
    cell.imageView.image = tempPKMN.picture;
    cell.textLabel.text = tempPKMN.name;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}


-(void)fetch{
    [self.data fetchFullPokedex:^(NSArray *response, NSError *error){
        if (self.segment.selectedSegmentIndex == 0 && self.pokemonAZ==nil) {
            self.pokemonByID = [[NSArray alloc] initWithArray:[self.data.pokemonData_api sortedArrayUsingDescriptors:@[self.byIndex]]];
        }
        [self.tableView reloadData];
    } ];
}


-(void) sortByType{
    for (NSString *pkType in [self.types allKeys]){
        NSMutableArray *typeHolder = (NSMutableArray *)[self.types objectForKey:pkType];
        
        for(int i = 0; i < self.data.pokemonData_api.count ; i++){
            Pokemon *pkmn = self.data.pokemonData_api[i];
            for(int j = 0; j< pkmn.type.count; j++){
                NSString *str = pkmn.type[j];
                if([str isEqualToString:pkType]){
                    [(NSMutableArray *)[self.types objectForKey:pkType] addObject:pkmn];
                    break;
                }
            }
        }

        NSLog(@"%@",self.types);
    }
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Pokemon *pokemon = self.pkData[indexPath.row];
    
    
    NSLog(@"%ld ,%@", pokemon.index, pokemon.name);
    ViewControllerPokemonDisp *viewControllerSegued = [self.storyboard instantiateViewControllerWithIdentifier:@"pkVC"];
//    viewControllerSegued.urlString =[NSString stringWithString: urlString];
//    viewControllerSegued.labelString = [NSString stringWithString:rowString];
    viewControllerSegued.pkmn = pokemon;
    [self.navigationController pushViewController:viewControllerSegued animated:YES];
    
    

}


- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if(self.segment.selectedSegmentIndex ==2){
        NSArray *keys = [self.types allKeys];
        for(int i = 0 ; i< keys.count; i++){
            if (section == i){
                NSString *header = [keys[i] uppercaseString];
                return header;
            }
        }
        
    }
    
    return @"";

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
