//
//  LeoLawyer.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/14/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "AbstractorLayParty.h"

@interface LeoLawyer : AbstractorLayParty

@property (nonatomic, retain) AbstractorLayParty* lawParty;

-(AbstractorLayParty*)initWithLawParty:(AbstractorLayParty*)lawParty;
-(void)whatIWasDoingWhen:(NSDate*)date;
-(void)introduceMySelf;
@end
