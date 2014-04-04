//
//  LeoDirector.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/4/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "LeoDirector.h"
#import "LeoBuilder.h"
#import "LeoBuilder.h"

@implementation LeoDirector

-(LeoAbstractChemicalDrug*)createChemicalDrug1 {
    LeoAbstractChemicalDrug* drug= [[self useBuilder] synthesisChemicalDrug:@"drug1"];
    return drug;
}
-(LeoAbstractChemicalDrug*)createChemicalDrug2 {
    LeoAbstractChemicalDrug* drug= [[self useBuilder] synthesisChemicalDrug:@"drug2"];
    return drug;
}
-(LeoAbstractChemicalDrug*)createChemicalDrug3 {
    LeoAbstractChemicalDrug* drug= [[self useBuilder] synthesisChemicalDrug:@"drug3"];
    return drug;
}

-(LeoAbstractBuilder*)useBuilder{
    if (!self.builder) {
        self.builder = [[LeoBuilder alloc] init];
    }
    return self.builder;
}
@end
