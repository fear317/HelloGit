//
//  LeoDelegate.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 3/25/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "LeoDelegate.h"

@implementation LeoDelegate
-(void)setNum:(NSInteger)num {
    if (num < 100) {
        [self.delegate doSomething];
    }
    _num = num;
}
@end
