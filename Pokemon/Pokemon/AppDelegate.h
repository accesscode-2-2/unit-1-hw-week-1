//
//  AppDelegate.h
//  Pokemon
//
//  Created by Michael Kavouras on 7/26/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>



@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    AVAudioPlayer *pokemonMusic;
}

@property (strong, nonatomic) UIWindow *window;


@end

