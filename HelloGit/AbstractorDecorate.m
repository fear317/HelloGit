//
//  AbstractorDecorate.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/27/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "AbstractorDecorate.h"
#import "WomenClothes.h"

@implementation AbstractorDecorate
-(id)initWithClothes:(AbstractorClothes*)closthes
{
    self = [super init];
    if (self) {
        if ([closthes isKindOfClass:[WomenClothes class]]) {
            self.clothes = (WomenClothes*)closthes;
        }
    }
    return self;
}
-(void)decriptClothes
{
    if (self.clothes) {
        [self.clothes description];
    }
}
@end
