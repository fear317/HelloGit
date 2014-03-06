//
//  NSString+Symbol.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 3/6/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "NSString+Symbol.h"

@implementation NSString (Symbol)

-(NSString*)addSymbol:(NSString*)symbol  position:(BOOL)isLeft{
    if (isLeft) {
        return [NSString stringWithFormat:@"%@%@",symbol,self];
    }
    return [NSString stringWithFormat:@"%@%@",self,symbol];
}
@end
