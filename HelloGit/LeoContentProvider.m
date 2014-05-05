//
//  LeoContentProvider.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/18/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "LeoContentProvider.h"
#import "AbstractorMediator.h"

@implementation LeoContentProvider

-(void)provideFor:(NSString*)city withContent:(NSString*)content {
    if (self.mediator) {
        [self.mediator addContents:city content:content];
    }
}
@end
