//
//  AbstractorLayParty.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/14/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "AbstractorLayParty.h"

@implementation AbstractorLayParty

-(void)whatIWasDoingWhen:(NSDate*)date {
    NSLog(@"I was doing ...when %@",date);
}

-(void)introduceMySelf {
    NSLog(@"My Name is %@",self.name);
    NSLog(@"My profession is %@", self.profession);
    NSLog(@"My age is %d", self.age);
}
@end
