//
//  TestViewController.m
//  testGit
//
//  Created by 徐亚杏 on 2018/7/24.
//  Copyright © 2018年 徐亚杏. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.view.backgroundColor = [UIColor grayColor];
    [self funcAction];
}

-(void)funcAction{

    NSLog(@"master");
    NSLog(@"test9");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"test10");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
