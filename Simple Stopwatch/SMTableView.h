//
//  SMTableView.h
//  Simple Stopwatch
//
//  Created by Stephen McMillan on 17/07/2014.
//  Copyright (c) 2014 Stephen McMillan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SMTableView : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    
    IBOutlet UITableView *tableView;
    NSArray *backgroundsArray;
    
}


@end
