//
//  Customer.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/6/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeoServer.h"
#import "AbstractorCommand.h"

@interface Customer : NSObject

@property (nonatomic, retain) LeoServer *server;

-(void)callServer:(LeoServer*)server;
-(void)orderFood:(AbstractorCommand*)command;
@end
