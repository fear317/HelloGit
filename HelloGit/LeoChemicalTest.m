//
//  LeoChemicalTest.m
//  HelloGit
//
//  Created by sparkfire.l.zhang on 4/4/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "LeoChemicalTest.h"

@implementation LeoChemicalTest

-(void) addRedElement {
    self.chemicalName = [NSString stringWithFormat:@"%@ + %@",self.chemicalName,@"Red"];
}

-(void) addBlueElement {
    self.chemicalName = [NSString stringWithFormat:@"%@ + %@",self.chemicalName,@"Blue"];
}

-(void) addYellowElement {
    self.chemicalName = [NSString stringWithFormat:@"%@ + %@",self.chemicalName,@"Yellow"];
}

@end
