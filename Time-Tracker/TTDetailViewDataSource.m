//
//  TTDetailViewDataSource.m
//  Time-Tracker
//
//  Created by Duc Ho on 1/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTDetailViewDataSource.h"
#import "TTProjectController.h"
#import "Entry.h"

@implementation TTDetailViewDataSource 

- (void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.project.entries count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    Entry *entry = [Entry new];
    entry = [self.project entries][indexPath.row];
//    NSLog(@"%@",entry.timeIn);
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %@", entry.timeIn, entry.timeOut];
//    cell.textLabel.text = [NSString stringWithFormat:@"%d - %d", 1, 1];

    return cell;

}

@end
