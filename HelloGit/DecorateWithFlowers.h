//
//  DecorateWithFlowers.h
//  HelloGit
//
//  Created by sparkfire.l.zhang on 5/27/14.
//  Copyright (c) 2014 Zhang, Sparkfire L. All rights reserved.
//

#import "AbstractorDecorate.h"

@interface DecorateWithFlowers : AbstractorDecorate
//@property (strong, nonatomic) AbstractorClothes *clothes;
-(id)initWithClothes:(AbstractorClothes*)closthes;
-(void)decriptClothes;
@end
