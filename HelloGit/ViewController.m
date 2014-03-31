//
//  ViewController.m
//  HelloGit
//
//  Created by Zhang, Sparkfire L. on 7/3/13.
//  Copyright (c) 2013 Zhang, Sparkfire L. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Symbol.h"
#import "LeoSingleton.h"
#import "AbstractCarFactory.h"
#import "AbstractCar.h"
#import "WhiteCarFactory.h"

@interface Model : NSObject
@end
@implementation Model

@end

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
    
    
    [self testReferCount];
    [self testSingleton];
    [self testFactory];
    self.leoDelegate = [[LeoDelegate alloc] init];
    self.leoDelegate.delegate = self;
    [self testDelegate:500];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    [self.leoDelegate release];
}
-(void) testFactory{
    AbstractCarFactory *carFactory = [[WhiteCarFactory alloc] init];
    AbstractCar *car = [carFactory createCar];
    [car carAlarm];
}
- (void) testSingleton {
    LeoSingleton* singleton1 = [LeoSingleton shareLeoSingleton];
    singleton1.name = @"leo";
    LeoSingleton* singleton2 = [LeoSingleton shareLeoSingleton];
    singleton2.name = @"Jack";
    NSLog(@"name=%@",singleton1.name);
}
- (void) testDelegate:(NSInteger)number {
    self.leoDelegate.num = number;
}
- (void) testReferCount {
    
    Model * model = [[Model alloc] init];
    NSLog(@"model rc=%d",[model retainCount]);
    NSArray * oriArray = [NSArray arrayWithObjects:model,@"a",@"b", nil];//源数据,不可修改
    NSLog(@"model rc=%d,oriArray rc=%d",[model retainCount],[oriArray retainCount]);
    
    NSInteger count = CFGetRetainCount(model);
    NSLog(@"model current retain count = %d",count);
    
    NSArray * oriArrayCopy = [oriArray copy];//跟oriArray地址一样，浅拷贝，不可修改
    NSLog(@"model rc=%d,oriArray rc=%d,oriArrayCopy rc=%d",[model retainCount],[oriArray retainCount],[oriArrayCopy retainCount]);
    NSArray * oriArrayMCopy = [oriArray mutableCopy];//深拷贝,生成了NSMutableArray，可以修改
    NSLog(@"model rc=%d,oriArray rc=%d,oriArrayCopy rc=%d,oriArrayMCopy rc=%d",[model retainCount],[oriArray retainCount],[oriArrayCopy retainCount],[oriArrayMCopy retainCount]);
 /*
    NSLog(@"oriArray =%p ,0 =%p",oriArray,[oriArray objectAtIndex:0]);
    NSLog(@"oriArrayCopy =%p ,0 =%p ",oriArrayCopy,[oriArrayCopy objectAtIndex:0]);
    NSLog(@"oriArrayMCopy =%p ,0 =%p ",oriArrayMCopy,[oriArrayMCopy objectAtIndex:0]);
    NSLog(@"++++++");
    
    
    Model * model2 = [[Model alloc] init];
    NSLog(@"model rc=%d",[model2 retainCount]);
    NSMutableArray *oriMArray = [NSMutableArray arrayWithObjects:model2,@"a", @"b",nil];//源数据,可以修改
    NSLog(@"model rc=%d,oriMArray rc=%d",[model2 retainCount],[oriMArray retainCount]);
    NSMutableArray *oriMArrayCopy = [oriMArray copy];//深拷贝，生成不可变的NSArray
    NSLog(@"model rc=%d,oriMArray rc=%d,oriMArrayCopy rc=%d",[model2 retainCount],[oriMArray retainCount],[oriMArrayCopy retainCount]);
    NSMutableArray *oriMArrayMCopy = [oriMArray mutableCopy];//深拷贝，可以修改
    NSLog(@"model rc=%d,oriMArray rc=%d,oriMArrayCopy rc=%d,oriMArrayMCopy rc=%d",[model2 retainCount],[oriMArray retainCount],[oriMArrayCopy retainCount],[oriMArrayMCopy retainCount]);
    //  NSMutableArray *oriMArrayMCopy2 = [[NSMutableArray alloc] initWithArray:oriMArray copyItems:YES];
    
    NSLog(@"oriMArray =%p, 0 =%p",oriMArray,[oriMArray objectAtIndex:0]);
    NSLog(@"oriMArrayCopy =%p, 0 =%p ",oriMArrayCopy,[oriMArrayCopy objectAtIndex:0]);
    NSLog(@"oriMArrayMCopy =%p, 0 =%p ",oriMArrayMCopy,[oriMArrayMCopy objectAtIndex:0]);
    //NSLog(@"oriMArrayMCopy2 0 =%p c=%d",[oriMArrayMCopy2 objectAtIndex:0],[[oriMArrayMCopy2 objectAtIndex:0] retainCount]);
    */
}
-(void)doSomething {
    NSLog(@"the num is less than 100;");
}
@end
