//
//  TTViewControllerDataSource.m
//  Time-Tracker
//
//  Created by Duc Ho on 1/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTViewControllerDataSource.h"
#import "Project.h"

@implementation TTViewControllerDataSource 


- (void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return [EntryController sharedInstance].entries.count;
    return [self sampleArray].count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    
//    Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
//    cell.textLabel.text = entry.title;
    
    cell.textLabel.text = [self sampleArray][indexPath.row];
    
    return cell;
}

-(NSArray *) sampleArray {
    return @[@"1",@"2",@"3"];
}

@end
