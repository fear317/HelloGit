//
//  LeoSingleton.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 3/25/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "LeoSingleton.h"

@implementation LeoSingleton
+(LeoSingleton*)shareLeoSingleton{
    static LeoSingleton* instance = nil;
    @synchronized(instance){
        if (!instance) {
            instance = [[LeoSingleton alloc] init];
        }
    }
    return instance;
}

-(void)dealloc{
    [super dealloc];
    
    [[LeoSingleton shareLeoSingleton] release];
}
@end
