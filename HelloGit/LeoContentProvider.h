//
//  LeoContentProvider.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/18/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "AbstractorUser.h"

@interface LeoContentProvider : AbstractorUser
@property (nonatomic, retain) AbstractorMediator *mediator;

-(void)provideFor:(NSString*)city withContent:(NSString*)content;
@end
