//
//  LeoDelegate.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 3/25/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol HelpMeDoSomething
@required
-(void)doSomething;

@optional
-(void)doSomethingIfYouLike;

@end

@interface LeoDelegate : NSObject
@property (nonatomic,retain) id<HelpMeDoSomething> delegate;
@property (nonatomic,assign) NSInteger num;
@end
