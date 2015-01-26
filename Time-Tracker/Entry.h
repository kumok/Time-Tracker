//
//  Entry.h
//  Time-Tracker
//
//  Created by Duc Ho on 1/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>


static NSString * const InKey = @"IN";
static NSString * const OutKey = @"OUT";

@interface Entry : NSObject

@property (nonatomic, strong) NSDate *timeIn;
@property (nonatomic, strong) NSDate *timeOut;

- (id)initWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)entryDictionary;

@end
