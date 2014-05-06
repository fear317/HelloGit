//
//  OrderDrink.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/6/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "OrderDrink.h"

@implementation OrderDrink
-(void)orderFood {
    NSLog(@"顾客点了酒水");

    if (self.cook) {
        [self.cook provideFood];
    }
}

@end
