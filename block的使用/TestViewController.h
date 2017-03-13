//
//  TestViewController.h
//  block的使用
//
//  Created by XM on 17/3/13.
//  Copyright © 2017年 XM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController

// 无传递参数的block
@property (nonatomic, copy) void(^runBlock)();

// 有传递参数的block
@property (nonatomic, copy) void(^eatBlock)(NSUInteger count);


@end
