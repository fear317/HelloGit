//
//  AbstractCarFactory.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 3/31/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractCar.h"

@interface AbstractCarFactory : NSObject
-(AbstractCar*)createCar;
@end
