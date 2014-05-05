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
#import "LeoDirector.h"
#import "LeoAbstractChemicalDrug.h"
#import "AbstractorLayParty.h"
#import "LeoLawyer.h"
#import "LeoAccuser.h"
#import "LeoDefendant.h"
#import "LeoBook.h"
#import "LeoTVBox.h"
#import "LeoTVAudience.h"
#import "LeoContentProvider.h"

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
    [self testSingletonPattern];
    [self testFactoryPattern];
    self.leoDelegate = [[LeoDelegate alloc] init];
    self.leoDelegate.delegate = self;
    [self testDelegate:500];
    [self testBuilderPattern];
    [self testProxyPattern];
    [self testPrototype];
    [self testMediator];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    [self.leoDelegate release];
}
- (void) testMediator {
    LeoTVBox* tvBox = [[LeoTVBox alloc] init];
    LeoTVAudience *tvUser = [[LeoTVAudience alloc] initWithTVBox:tvBox];
    LeoContentProvider *tvCP = [[LeoContentProvider alloc] initWithTVBox:tvBox];
    [tvCP provideFor:@"北京" withContent:@"倚天屠龙记"];
    [tvCP provideFor:@"上海 " withContent:@"倚天屠龙记"];
    [tvUser wantToWatch:@"北京"];
    [tvUser wantToWatch:@"河南"];
}
- (void) testPrototype {
    LeoBook *book = [[LeoBook alloc] init];
    book.name     = @"诛仙";
    book.author   = @"萧鼎";
    book.count    = [[NSNumber alloc] initWithInt:500];
    [book.markArr addObject:@"first section"];
    [book.markArr addObject:@"second section"];
    [book.markArr addObject:@"third section"];
    NSLog(@"book prototype name=%@, author=%@, count=%d, mark:%@",book.name, book.author, [book.count intValue], book.markArr);
    LeoBook *book1 = [book clone];
    NSLog(@"book1 name=%@, author=%@, count=%d, mark:%@",book1.name, book1.author, [book1.count intValue], book1.markArr);
    NSLog(@"then change just book prototpye");
    book.name   = @"超魔杀帝国";
    book.author = @"小兵队长";
    book.count  = [NSNumber numberWithInt:250];
    [book.markArr addObject:@"page 108"];
    [book.markArr removeObject:@"first section"];
    NSLog(@"book prototype name=%@, author=%@, count=%d, mark:%@",book.name, book.author, [book.count intValue], book.markArr);
    NSLog(@"book1 name=%@, author=%@, count=%d, mark:%@",book1.name, book1.author, [book1.count intValue], book1.markArr);

}
-(void) testProxyPattern {
    LeoAccuser *accuser= [[LeoAccuser alloc] init];
    accuser.name = @"ZhangSan";
    accuser.age  = 30;
    accuser.profession = @"traffic police";
    LeoLawyer *accuserLawyer = [[LeoLawyer alloc] initWithLawParty:accuser];
    
    LeoDefendant *defendant = [[LeoDefendant alloc] init];
    defendant.name = @"LiSi";
    defendant.age = 40;
    defendant.profession = @"driver";
    LeoLawyer *defendantLawyer = [[LeoLawyer alloc] initWithLawParty:defendant];
    
    NSDate *date = [NSDate date];
    NSTimeInterval ti = 3600*24*7;
    date = [date dateByAddingTimeInterval:ti];
    NSLog(@"I am judge Leo， please tell me you personal information");
    [accuser introduceMySelf];
    [defendant introduceMySelf];
    
    NSLog(@"I am judge Leo, every lawyer, please tell me what your lawParty was doing one week ago?");
    [accuserLawyer whatIWasDoingWhen:date];
    [defendantLawyer whatIWasDoingWhen:date];

    
}
-(void) testBuilderPattern{
    LeoDirector * director = [[LeoDirector alloc] init];
    LeoAbstractChemicalDrug *drug1 = [director createChemicalDrug1];
    NSLog(@"name of drug1 is %@",drug1.chemicalName);
    
    LeoAbstractChemicalDrug *drug2 = [director createChemicalDrug2];
    NSLog(@"name of drug2 is %@",drug2.chemicalName);
    
    LeoAbstractChemicalDrug *drug3 = [director createChemicalDrug3];
    NSLog(@"name of drug3 is %@",drug3.chemicalName);
    
    
}
-(void) testFactoryPattern{
    AbstractCarFactory *carFactory = [[WhiteCarFactory alloc] init];
    AbstractCar *car = [carFactory createCar];
    [car carAlarm];
}
- (void) testSingletonPattern {
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
