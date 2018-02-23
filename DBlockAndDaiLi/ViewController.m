//
//  AppDelegate.m
//  DBlockAndDaiLi
//
//  Created by guodongdong on 2018/2/23.
//  Copyright © 2018年 Dawn. All rights reserved.
//

#import "ViewController.h"
#import "WCView.h"
#import "WinView.h"
#import "DawnView.h"

@interface ViewController ()<WCViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WCView *v = [[WCView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    v.delegate = self;
    [self.view addSubview:v];
    
    // 外部调用
    WinView *v1 = [[WinView alloc] initWithFrame:CGRectMake(100, 250, 100, 100)];
    v1.btnClickBlock = ^(UIButton *btn) {
        NSLog(@"%ld",btn.tag);
    };
    [self.view addSubview:v1];
    
    // 外部调用
    DawnView *v2 = [[DawnView alloc] initWithFrame:CGRectMake(100, 400, 100, 100)];
    [v2 buttonWhenClick:^(UIButton *btn) {
        NSLog(@"%ld",btn.tag);
    }];
    [self.view addSubview:v2];
}

- (void)wcviewBtnClick:(UIButton *)btn {
    NSLog(@"%ld",btn.tag);
}

@end

