//
//  Person.h
//  testGit
//
//  Created by 徐亚杏 on 2018/7/28.
//  Copyright © 2018年 徐亚杏. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Account;

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger age;
@property (nonatomic, strong) Account *account;
- (void)setObserver;

@end
