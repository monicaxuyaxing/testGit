//
//  ViewController.m
//  testGit
//
//  Created by 徐亚杏 on 2018/7/24.
//  Copyright © 2018年 徐亚杏. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>


@interface ViewController ()
@property (nonatomic, copy) void(^blockA)(void);

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

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

}



@end
