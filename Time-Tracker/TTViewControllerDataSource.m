//
//  TTViewControllerDataSource.m
//  Time-Tracker
//
//  Created by Duc Ho on 1/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTViewControllerDataSource.h"
#import "TTProjectController.h"
//#import "Project.h"

@implementation TTViewControllerDataSource 


- (void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"ListCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return [EntryController sharedInstance].entries.count;
    
    return [[TTProjectController sharedInstance].projets count];

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListCell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"ListCell"];
    }
    
    Project *pj = [TTProjectController sharedInstance].projets[indexPath.row];
    cell.textLabel.text = pj.title;
    return cell;
}


@end
