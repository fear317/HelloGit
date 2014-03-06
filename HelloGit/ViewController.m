//
//  ViewController.m
//  HelloGit
//
//  Created by Zhang, Sparkfire L. on 7/3/13.
//  Copyright (c) 2013 Zhang, Sparkfire L. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Symbol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString* str = @"100.000";
    NSString* formatStr=nil;
    formatStr = [str addSymbol:@"￥" position:YES];
    formatStr = [str addSymbol:@"$" position:NO];
    formatStr = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
