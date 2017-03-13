//
//  ViewController.m
//  block的使用
//
//  Created by XM on 17/3/13.
//  Copyright © 2017年 XM. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UILabel *lab;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = [UIColor orangeColor];
    btn.frame = CGRectMake(50, 200, 80, 35);
    [btn setTitle:@"btn" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UILabel *lab = [[UILabel alloc] init];
    lab.backgroundColor = [UIColor whiteColor];
    lab.frame = CGRectMake(50, 260, 200, 35);
    [self.view addSubview:lab];
    self.lab = lab;
}

- (void)btnAction
{
    TestViewController *testVC = [[TestViewController alloc] init];
    
    // 第一种写法
    testVC.runBlock = ^{
        
        // 无参数block可以用来传递动作或者状态
        NSString *message = @"调用了runBlock方法";
        self.lab.text = message;
        NSLog(@"%@", message);
        
        
    };
    
    // 第二种写法
    [testVC setEatBlock:^(NSUInteger count) {
        
        // 有参数的block可以用来传递数据
        NSString *message = [NSString stringWithFormat:@"拿到了%ld", count];
        self.lab.text = message;
        NSLog(@"%@", message);
        
    }];

    [self.navigationController pushViewController:testVC animated:YES];
}

@end
