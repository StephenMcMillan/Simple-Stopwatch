//
//  SMTableView.m
//  Simple Stopwatch
//
//  Created by Stephen McMillan on 17/07/2014.
//  Copyright (c) 2014 Stephen McMillan. All rights reserved.
//

#import "SMTableView.h"

@interface SMTableView ()

@end

@implementation SMTableView

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    backgroundsArray = [[NSArray alloc]initWithObjects:@"redBackground",@"blueBackground",@"greenBackground",@"orangeBackground", nil];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return backgroundsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    cell.textLabel.text = [backgroundsArray objectAtIndex:indexPath.row];
    
    
    
    return cell;
}






@end
