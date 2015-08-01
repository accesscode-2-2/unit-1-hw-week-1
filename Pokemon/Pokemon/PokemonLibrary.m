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
        _library = @[@{kName: @"Pikachu",
                       kDescription: @"Pikachu, the Mouse Pokémon. It can generate electric attacks from the electric pouches located in both of its cheeks.",
                       kIcon: @"25.png",
                       kLargeIcon: @"25.png",
                       kType: @[@"Electric", @""]
                       },
                     @{kName: @"Squirtle",
                       kDescription: @"Bulbasaur. It bears the seed of a plant on its back from birth. The seed slowly develops. Researchers are unsure whether to classify Bulbasaur as a plant or animal. Bulbasaur are extremely calm and very difficult to capture in the wild.",
                       kIcon: @"7.png",
                       kLargeIcon: @"7.png",
                       kType: @[@"Water", @""]
                       },
                     @{kName: @"Bulbasaur",
                       kDescription: @"Bulbasaur. It bears the seed of a plant on its back from birth. The seed slowly develops. Researchers are unsure whether to classify Bulbasaur as a plant or animal. Bulbasaur are extremely calm and very difficult to capture in the wild.",
                       kIcon: @"1.png",
                       kLargeIcon: @"1.png",
                       kType: @[@"Grass", @"Poison"]
                       },
                     @{kName: @"Charmander",
                       kDescription: @"Pidgey is a Flying Pokémon. Among all the Flying Pokémon, it is the gentlest and easiest to capture. A perfect target for the beginning Pokémon Trainer to test his Pokémon's skills. Pidgey's Gust power creates tornadoes. It also has a Sand-Attack.",
                       kIcon: @"4.png",
                       kLargeIcon: @"4.png",
                       kType: @[@"Fire", @""]
                       },
                     @{kName: @"Pidgey",
                       kDescription: @"Pidgey is a Flying Pokémon. Among all the Flying Pokémon, it is the gentlest and easiest to capture. A perfect target for the beginning Pokémon Trainer to test his Pokémon's skills. Pidgey's Gust power creates tornadoes. It also has a Sand-Attack.",
                       kIcon: @"16.png",
                       kLargeIcon: @"16.png",
                       kType: @[@"Normal", @"Flying"]
                       },
                     @{kName: @"Caterpie",
                       kDescription: @"Caterpie, the Worm Pokémon. Caterpie uses the suction cups on its feet to climb trees and feed on its favorite leaves.",
                       kIcon: @"10.png0",
                       kLargeIcon: @"10.png",
                       kType: @[@"Bug", @""]
                       },
                     ];    }
    return self;
}

@end
