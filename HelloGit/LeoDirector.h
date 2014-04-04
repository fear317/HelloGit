//
//  LeoDirector.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/4/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeoAbstractChemicalDrug.h"
#import "LeoAbstractBuilder.h"

@interface LeoDirector : NSObject
@property (nonatomic, retain) LeoAbstractBuilder *builder;

-(LeoAbstractChemicalDrug*)createChemicalDrug1;
-(LeoAbstractChemicalDrug*)createChemicalDrug2;
-(LeoAbstractChemicalDrug*)createChemicalDrug3;

@end
