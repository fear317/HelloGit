//
//  LeoServer.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/6/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "LeoServer.h"

@implementation LeoServer
-(void)receiveCommand : (AbstractorCommand*)command{
    self.command = command;
}
-(void)executeCommand {
    if (self.command) {
        [self.command orderFood];
    }
}
@end
