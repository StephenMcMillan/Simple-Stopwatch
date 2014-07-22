//
//  SMOptionsViewController.m
//  Simple Stopwatch
//
//  Created by Stephen McMillan on 17/07/2014.
//  Copyright (c) 2014 Stephen McMillan. All rights reserved.
//

#import "SMOptionsViewController.h"

@interface SMOptionsViewController ()

@end

@implementation SMOptionsViewController {
    
    IBOutlet UITableView *myTableView;
    NSArray *backgroundsArray;
    NSIndexPath *lastIndex;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:NO];
    self.automaticallyAdjustsScrollViewInsets = NO;

    backgroundsArray = [[NSArray alloc]initWithObjects:@"Blue Background (Default)",@"Red Background",@"Green Background",@"Orange Background", nil];
    
}

# pragma mark - Table View Methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return backgroundsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    cell.textLabel.text = [backgroundsArray objectAtIndex:indexPath.row];
    
    // Finding the previous selected User Wallpaper to improve the UX
    
    NSString *imageSelected = [[NSString alloc]init];
    imageSelected = [[NSUserDefaults standardUserDefaults] objectForKey:@"userBackground"];
    
    if ([imageSelected isEqualToString:@"blueBackground"] && indexPath.row == 0) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else if ([imageSelected isEqualToString:@"redBackground"] && indexPath.row == 1) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else if ([imageSelected isEqualToString:@"greenBackground"] && indexPath.row == 2) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else if ([imageSelected isEqualToString:@"orangeBackground"] && indexPath.row == 3) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    switch (indexPath.row) {
        case 0:
            cell.imageView.image = [UIImage imageNamed:@"iconBlue"];
            break;
        case 1:
            cell.imageView.image = [UIImage imageNamed:@"iconRed"];
            break;
        case 2:
            cell.imageView.image = [UIImage imageNamed:@"iconGreen"];
            break;
        case 3:
            cell.imageView.image = [UIImage imageNamed:@"iconOrange"];
            break;
        default:
            break;
    }
    return cell;
}

    // Getting the users choice of Wallpaper
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *Cell = [tableView cellForRowAtIndexPath:indexPath];
    
    Cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    switch (indexPath.row) {
        case 0:
            [[NSUserDefaults standardUserDefaults] setValue:@"blueBackground" forKey:@"userBackground"];
            
            break;
        case 1:
            [[NSUserDefaults standardUserDefaults] setValue:@"redBackground" forKey:@"userBackground"];
            break;
        case 2:
            [[NSUserDefaults standardUserDefaults] setValue:@"greenBackground" forKey:@"userBackground"];
            break;
        case 3:
            [[NSUserDefaults standardUserDefaults] setValue:@"orangeBackground" forKey:@"userBackground"];
            break;
        default:
            break;
    }
    [tableView reloadData];
}


    


@end
