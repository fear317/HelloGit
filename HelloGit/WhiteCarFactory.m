//
//  CarFactory.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 3/31/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "WhiteCarFactory.h"
#import "WhiteCar.h"

@implementation WhiteCarFactory
-(AbstractCar*)createCar{
    return [[WhiteCar alloc] init];
}
@end
