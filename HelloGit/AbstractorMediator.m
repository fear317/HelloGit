//
//  AbstractorMediator.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/18/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "AbstractorMediator.h"
#import "AbstractorUser.h"

@implementation AbstractorMediator

-(void)requestTVPrograme:(NSString*)city {
    if (self.tvProgrameDic) {
        [self playTVPrograme:city];
    }
}

-(void)addContents:(NSString*)city content:(NSString*)programe {
    if (!self.tvProgrameDic) {
        self.tvProgrameDic = [[NSMutableDictionary alloc] initWithCapacity:2];
    }
    [self.tvProgrameDic setObject:programe forKey:city];
}

-(void)playTVPrograme:(NSString*)city {
    NSString* programe = [self.tvProgrameDic valueForKey:city];
    if (programe) {
        NSLog(@"播放%@电视节目: %@",city,programe);
    }else {
        NSLog(@"遗憾，没有您想看的电视节目");
    }
}
@end
