//
//  LeoBook.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/17/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LeoBook : NSObject<NSCopying>

@property (nonatomic, retain) NSString* name;
@property (nonatomic, retain) NSString *author;
@property (nonatomic, retain) NSNumber *count;
@property (nonatomic, retain) NSMutableArray *markArr;
@end
