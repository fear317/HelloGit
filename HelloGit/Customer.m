//
//  Customer.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/6/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "Customer.h"

@implementation Customer

-(void)callServer:(LeoServer*)server {
    self.server = server;
    NSLog(@"顾客呼叫服务员");
}

-(void)orderFood:(AbstractorCommand*)command {
    if (self.server) {
        [self.server receiveCommand:command];
    }
}

@end
