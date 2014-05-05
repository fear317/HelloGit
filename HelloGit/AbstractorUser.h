//
//  AbstractorUser.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/18/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "AbstractorMediator.h"

@interface AbstractorUser : NSObject
@property (nonatomic, retain) AbstractorMediator *mediator;

-(AbstractorUser*)initWithTVBox:(AbstractorMediator*)mediator;
-(void)wantToWatch:(NSString*)city;
@end
