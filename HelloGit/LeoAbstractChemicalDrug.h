//
//  LeoAbstractChemicalDrug.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/4/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LeoAbstractChemicalDrug : NSObject
@property (assign, nonatomic) NSString* chemicalName;

-(void)addRedElement;
-(void)addBlueElement;
-(void)addYellowElement;
@end
