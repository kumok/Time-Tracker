//
//  Project.h
//  Time-Tracker
//
//  Created by Duc Ho on 1/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface Project : NSObject

@property (strong, nonatomic) NSArray * entries;
@property (strong, nonatomic) NSString * title;
@property (strong, nonatomic) NSString * ducho;


-(id) initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)projectDictionary;


-(void)addEntry:(Entry *)entry;
-(void)removeEntry:(Entry *)entry;
//-(void)setEntries:(NSArray *)entries;
-(void)startNewEntry;
-(void)endCurrentEntry;


@end
