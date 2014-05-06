//
//  OrderStapleFood.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/6/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "OrderStapleFood.h"

@implementation OrderStapleFood

-(void)orderFood {
    NSLog(@"顾客点了主食");

    if (self.cook) {
        [self.cook provideFood];
    }
}
@end
