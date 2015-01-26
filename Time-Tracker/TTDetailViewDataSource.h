//
//  TTDetailViewDataSource.h
//  Time-Tracker
//
//  Created by Duc Ho on 1/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"

@interface TTDetailViewDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) Project * project;

@end
