//
//  LeoSingleton.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 3/25/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface LeoSingleton : NSObject
@property (nonatomic, retain) NSString* name;
+(LeoSingleton*)shareLeoSingleton;
@end
