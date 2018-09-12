//
//  ViewController.m
//  testGit
//
//  Created by 徐亚杏 on 2018/7/24.
//  Copyright © 2018年 徐亚杏. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "Person.h"
#import "Account.h"
#import "TestViewController.h"


@interface ViewController ()
@property (nonatomic, copy) void(^blockA)(void);

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"666");
    NSString *m1 = @"";
    objc_setAssociatedObject(self, &m1, @"1", OBJC_ASSOCIATION_COPY_NONATOMIC);
    NSLog(@"value1: %@",objc_getAssociatedObject(self, &m1));

    void(^blockA)(void) = ^{
        objc_setAssociatedObject(self, &m1, @"2", OBJC_ASSOCIATION_COPY_NONATOMIC);
        NSLog(@"value2: %@",objc_getAssociatedObject(self, &m1));
    };
    
    blockA();
    NSLog(@"value3: %@",objc_getAssociatedObject(self, &m1));
    objc_setAssociatedObject(self, &m1, @"3", OBJC_ASSOCIATION_COPY_NONATOMIC);
    NSLog(@"value4: %@",objc_getAssociatedObject(self, &m1));
    
    
    Person *p = [[Person alloc] init];
    
    p.account = [[Account alloc] init];
    p.account.balance = 100.0;
    //添加监听器
    [p setObserver];
    //重新对account的balance赋值后会触发回调函数
    //输出: NewBalance: 200.0
    p.account.balance = 200.0;        

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    TestViewController *testVC = [[TestViewController alloc] init];
    [self presentViewController:testVC animated:YES completion:nil];
}

@end
