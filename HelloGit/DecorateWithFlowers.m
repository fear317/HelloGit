//
//  DecorateWithFlowers.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/27/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "DecorateWithFlowers.h"

@implementation DecorateWithFlowers

-(id)initWithClothes:(AbstractorClothes*)closthes
{
    id self = [super decriptClothes];
    if (self) {
        self.clothes = closthes;
    }
    return self;
}
-(void)decriptClothes
{
    [super de];
    NSLog(@"there are many beautiful flowers on this clothes");
}

@end
