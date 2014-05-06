//
//  LeoServer.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/6/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractorCommand.h"

@interface LeoServer : NSObject

@property (nonatomic, retain) AbstractorCommand *command;

-(void)receiveCommand : (AbstractorCommand*)command;
-(void)executeCommand;
@end
