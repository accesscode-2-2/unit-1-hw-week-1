//
//  PokemonLibrary.m
//  Pokemon
//
//  Created by Brian Blanco on 7/31/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PokemonLibrary.h"

NSString *const kName = @"name";
NSString *const kDescription = @"description";
NSString *const kIcon = @"icon";
NSString *const kLargeIcon = @"largeIcon";
NSString *const kType = @"type";

@implementation PokemonLibrary

- (instancetype)init {
    self = [super init];
    if (self) {
        //used to set up my PoKeMon dictionary
        _library = @[@{kName: @"Bulbasaur",
                       kDescription: @"Bulbasaur. It bears the seed of a plant on its back from birth. The seed slowly develops. Researchers are unsure whether to classify Bulbasaur as a plant or animal. Bulbasaur are extremely calm and very difficult to capture in the wild.",
                       kIcon: @"1.png",
                       kLargeIcon: @"1.png",
                       kType: @[@"Grass", @"Poison"]
                       },
                     @{kName: @"Ivysaur",
                       kDescription: @"Get your morning going by singing along to these classic tracks as you hit the shower bright and early!",
                       kIcon: @"2.png",
                       kLargeIcon: @"2.png",
                       kType: @[@"American Authors", @"Vacationer", @"Matt and Kim", @"MGMT", @"Echosmith", @"Tokyo Police Club", @"La Femme"]
                       },
                     @{kName: @"Venusaur",
                       kDescription: @"Get your morning going by singing along to these classic tracks as you hit the shower bright and early!",
                       kIcon: @"3.png",
                       kLargeIcon: @"3.png",
                       kType: @[@"American Authors", @"Vacationer", @"Matt and Kim", @"MGMT", @"Echosmith", @"Tokyo Police Club", @"La Femme"]
                       },
                     @{kName: @"Charmander",
                       kDescription: @"Get your morning going by singing along to these classic tracks as you hit the shower bright and early!",
                       kIcon: @"4.png",
                       kLargeIcon: @"4.png",
                       kType: @[@"American Authors", @"Vacationer", @"Matt and Kim", @"MGMT", @"Echosmith", @"Tokyo Police Club", @"La Femme"]
                       },
                     @{kName: @"Charmeleon",
                       kDescription: @"Get your morning going by singing along to these classic tracks as you hit the shower bright and early!",
                       kIcon: @"5.png",
                       kLargeIcon: @"5.png",
                       kType: @[@"American Authors", @"Vacationer", @"Matt and Kim", @"MGMT", @"Echosmith", @"Tokyo Police Club", @"La Femme"]
                       },
                     @{kName: @"Charizard",
                       kDescription: @"Get your morning going by singing along to these classic tracks as you hit the shower bright and early!",
                       kIcon: @"6.png",
                       kLargeIcon: @"6.png",
                       kType: @[@"American Authors", @"Vacationer", @"Matt and Kim", @"MGMT", @"Echosmith", @"Tokyo Police Club", @"La Femme"]
                       }
                       ];
    }
    return self;
}

@end
