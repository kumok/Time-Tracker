//
//  Entry.m
//  Time-Tracker
//
//  Created by Duc Ho on 1/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.timeIn = dictionary[InKey];
        self.timeOut = dictionary[OutKey];
    }
    return self;
}

- (NSDictionary *)entryDictionary {
    
    NSMutableDictionary *entryDictionary = [NSMutableDictionary new];
    if (self.timeIn) {
        [entryDictionary setObject:self.timeIn forKey:InKey];
    }
    if (self.timeOut) {
        [entryDictionary setObject:self.timeOut forKey:OutKey];
    }

    return entryDictionary;
    
}


@end
