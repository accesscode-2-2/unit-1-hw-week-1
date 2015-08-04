//
//  PKTableViewController.h
//  Pokemon
//
//  Created by Christella on 7/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PKTableViewController : UITableViewController
{

    UISegmentedControl *segmentedControl;
    
}

@property (nonatomic, retain) IBOutlet  UISegmentedControl *segmentedControl;

-(IBAction) segmentedControlChanged;

@end
