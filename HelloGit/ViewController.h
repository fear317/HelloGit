//
//  ViewController.h
//  HelloGit
//
//  Created by Zhang, Sparkfire L. on 7/3/13.
//  Copyright (c) 2013 Zhang, Sparkfire L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeoDelegate.h"

@interface ViewController : UIViewController<HelpMeDoSomething>
@property (nonatomic, retain) LeoDelegate *leoDelegate;
@end
