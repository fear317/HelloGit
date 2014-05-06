//
//  AbstractorCommand.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/6/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "AbstractorCommand.h"

@implementation AbstractorCommand
-(void)installCook: (AbstractorCook*)cook {
    self.cook = cook;
}
-(void)orderFood {
    if (self.cook) {
        [self.cook provideFood];
    }
}
@end
