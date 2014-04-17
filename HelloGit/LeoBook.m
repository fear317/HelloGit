//
//  LeoBook.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/17/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "LeoBook.h"

@implementation LeoBook

-(id)init {
    if (self) {
        self.markArr = [[NSMutableArray alloc] initWithCapacity:3];
    }
    return self;
}
-(id)copyWithZone:(NSZone *)zone {

    LeoBook *book = [LeoBook allocWithZone:zone];
    if (book) {
        book.name     = self.name;
        book.author   = self.author;
        book.count    = self.count;
        if (self.markArr) {
            book.markArr = [self.markArr copy];
        }
    }else {
        book = nil;
    }
    
    return book;
}
@end
