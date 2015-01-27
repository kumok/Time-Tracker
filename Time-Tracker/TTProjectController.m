//
//  TTProjectController.m
//  Time-Tracker
//
//  Created by Duc Ho on 1/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTProjectController.h"

static NSString *const projectListKey = @"ProjectList";


@implementation TTProjectController


+ (TTProjectController *)sharedInstance {
    static TTProjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[TTProjectController alloc] init];
//        [sharedInstance registerForNotification];
        
        [sharedInstance loadFromDefaults];
    });
    return sharedInstance;
}

-(void)setProjets:(NSArray *)projets {
    _projets = projets;
    [self synchronize];
}

-(void)addProject:(Project *)project {    // adding a new project to the array here
    
    if (!project) {
        return;
    }
    
    NSMutableArray *p = [[NSMutableArray alloc] initWithArray:self.projets];
    [p addObject:project];
    
    self.projets = p;
}

-(void)removeProject:(Project *)project {
    if (!project) {
        return;
    }
    
    NSMutableArray *p = self.projets.mutableCopy;
    [p removeObject:project];
    
    self.projets = p;
}

-(void)loadFromDefaults {
    NSArray *projectDict = [[NSUserDefaults standardUserDefaults] objectForKey:projectListKey];
    
    NSMutableArray *projects = [NSMutableArray array];
    
    for (NSDictionary *project in projectDict) {
        Project *newProject = [[Project alloc] initWithDictionary:project];
        [projects addObject:newProject];
    }
    self.projets = projects;
    
}

-(void)synchronize {
    NSMutableArray *a = [NSMutableArray array];
    
    for (Project *project in self.projets) {
        [a addObject:[project projectDictionary]];
    }
    [[NSUserDefaults standardUserDefaults] setObject:a forKey:projectListKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
}

@end

