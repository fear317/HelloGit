//
//  LeoLawyer.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/14/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "LeoLawyer.h"

@implementation LeoLawyer

-(AbstractorLayParty*)initWithLawParty:(AbstractorLayParty*)lawParty {
     [self init];
     self.lawParty = lawParty;
     return self;
}

-(void)whatIWasDoingWhen:(NSDate*)date {
    if (!self.lawParty) {
        NSLog(@"I do not have a lawParty");
    }else if(!date) {
        NSLog(@"now I am here");
    }else {
        NSLog(@"%@ was",self.lawParty.name);
        [self.lawParty whatIWasDoingWhen:date];
    }
}

-(void)introduceMySelf {
    if (self.lawParty) {
        [self.lawParty introduceMySelf];
    }
}

@end
