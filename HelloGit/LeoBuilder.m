//
//  LeoBuilder.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/4/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "LeoBuilder.h"
#import "LeoChemicalTest.h"

@implementation LeoBuilder

-(LeoAbstractChemicalDrug*)synthesisChemicalDrug:(NSString*)formula{
    LeoAbstractChemicalDrug * drug = [[LeoChemicalTest alloc] init];
    if ([formula isEqualToString:@"drug1"]) {
        [drug addRedElement];
        [drug addBlueElement];
        [drug addYellowElement];
    }else if([formula isEqualToString:@"drug2"]){
        [drug addBlueElement];
        [drug addRedElement];
        [drug addYellowElement];
    }else if([formula isEqualToString:@"drug3"]){
        [drug addYellowElement];
        [drug addBlueElement];
        [drug addRedElement];
    }else {
        NSLog(@"配方无效");
    }
    return drug;
}
@end
