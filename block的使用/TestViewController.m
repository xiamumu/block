//
//  TestViewController.m
//  block的使用
//
//  Created by XM on 17/3/13.
//  Copyright © 2017年 XM. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *runBtn = [[UIButton alloc] init];
    runBtn.backgroundColor = [UIColor orangeColor];
    runBtn.frame = CGRectMake(50, 200, 80, 35);
    [runBtn setTitle:@"run" forState:UIControlStateNormal];
    [runBtn addTarget:self action:@selector(runBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:runBtn];
    
    
    UIButton *eatBtn = [[UIButton alloc] init];
    eatBtn.backgroundColor = [UIColor redColor];
    eatBtn.frame = CGRectMake(50, 300, 80, 35);
    [eatBtn setTitle:@"eat" forState:UIControlStateNormal];
    [eatBtn addTarget:self action:@selector(eatBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:eatBtn];

    
}


- (void)runBtnAction
{
    // 调用无参数block
    if (self.runBlock) {
        self.runBlock();
    }
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)eatBtnAction
{
    // 调用有参数block
    if (self.eatBlock) {
        NSUInteger count = 666;
        self.eatBlock(count);
    }
    [self.navigationController popViewControllerAnimated:YES];

}

@end
