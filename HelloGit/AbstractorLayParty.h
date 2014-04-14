//
//  AbstractorLayParty.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/14/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractorLayParty : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *profession;
@property (nonatomic, assign) NSInteger age;

-(void)whatIWasDoingWhen:(NSDate*)date;
-(void)introduceMySelf;

@end
///123
