//
//  AbstractorCommand.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/6/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractorCook.h"

@interface AbstractorCommand : NSObject

@property (nonatomic, retain) AbstractorCook* cook;

-(void)installCook: (AbstractorCook*)cook;
-(void)orderFood;
@end
