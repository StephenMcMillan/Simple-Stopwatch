//
//  SMViewController.h
//  Simple Stopwatch
//
//  Created by Stephen McMillan on 17/07/2014.
//  Copyright (c) 2014 Stephen McMillan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SMViewController : UIViewController

@property (strong) UIImage *background;
@property (strong) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UIButton *startButtonLabel;
@property (nonatomic) NSMutableArray *elapsedTimes;

- (IBAction)startButton:(id)sender;
- (IBAction)resetButton:(id)sender;

@end
