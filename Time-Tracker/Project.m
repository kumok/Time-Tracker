
//
//  Project.m
//  Time-Tracker
//
//  Created by Duc Ho on 1/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Project.h"
#import "TTProjectController.h"

static NSString * const projectTitleKey = @"title";
static NSString * const entriesKey = @"entries";

@interface Project ()

@property (strong, nonatomic) Entry *currentEntry;

@end

@implementation Project



-(id) initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if (self) {
        self.title = dictionary[projectTitleKey];
        NSMutableArray *entries = [NSMutableArray new];
        entries = dictionary[entriesKey];
        self.entries = entries;
    }
    
    return self;
}

- (NSDictionary *)projectDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    if (self.title) {
    [dictionary setObject:self.title forKey:projectTitleKey];
    }
    NSMutableArray *entries = [NSMutableArray new];
    
    for (Entry *entry in self.entries) {
        [entries addObject:[entry entryDictionary]];
    }
    
    [dictionary setObject:entries forKey:entriesKey];
    
    return dictionary;
}

-(void)setEntries:(NSArray *)entries {
    _entries = entries;
//    [self synchronize];

}


- (void)synchronize {
    
    [[TTProjectController sharedInstance] synchronize];
    
}



-(void)startNewEntry {
    
}
-(void)endCurrentEntry {
    
}

-(void)addEntry:(Entry *)entry {
    
    if (!entry) {
        return;
    }
    
    NSMutableArray *e = [[NSMutableArray alloc] initWithArray:self.entries];
    [e addObject:entry];
    
    self.entries = e;
    
    
    
}
-(void)removeEntry:(Entry *)entry {
    if (!entry) {
        return;
    }
    
    NSMutableArray *e = [[NSMutableArray alloc] initWithArray:self.entries];
    [e removeObject:entry];
    
    self.entries = e;
}


@end
