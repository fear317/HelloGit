//
//  AbstractorDecorate.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/27/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "AbstractorClothes.h"

@class WomenClothes;
@interface AbstractorDecorate : AbstractorClothes
@property (strong, nonatomic) WomenClothes *clothes;
-(id)initWithClothes:(AbstractorClothes*)closthes;
-(void)decriptClothes;
@end
