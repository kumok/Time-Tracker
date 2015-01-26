//
//  TTProjectController.h
//  Time-Tracker
//
//  Created by Duc Ho on 1/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"


@interface TTProjectController : NSObject

@property (strong, nonatomic) NSArray * projets;


+ (TTProjectController *)sharedInstance;

-(void)addProject:(Project *)projects;
-(void) removeProject:(Project *)project;
-(void)setProjets:(NSArray *)project;
-(void)synchronize;


@end
