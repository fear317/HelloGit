//
//  AbstractorMediator.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/18/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

//#import <Foundation/Foundation.h>
//#import "AbstractorUser.h"

@interface AbstractorMediator : NSObject
@property  (nonatomic, retain) NSMutableDictionary *tvProgrameDic;

-(void)requestTVPrograme:(NSString*)city;
-(void)addContents:(NSString*)city content:(NSString*)programe;
@end
