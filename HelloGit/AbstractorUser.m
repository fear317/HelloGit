//
//  AbstractorUser.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/18/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "AbstractorUser.h"
#import "AbstractorMediator.h"

@implementation AbstractorUser

-(AbstractorUser*)initWithTVBox:(AbstractorMediator*)mediator {
    if (self) {
        self.mediator = mediator;
    }
    return self;
}

-(void)wantToWatch:(NSString*)city {
    if (self.mediator) {
        NSLog(@"用户想要看%@电视台的节目", city);
        [self.mediator requestTVPrograme:city];
    }
}
@end
