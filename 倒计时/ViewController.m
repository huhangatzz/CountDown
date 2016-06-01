//
//  ViewController.m
//  倒计时
//
//  Created by huhang on 15/11/28.
//  Copyright (c) 2015年 huhang. All rights reserved.
//

#import "ViewController.h"
#import "HU_CountDown.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //跟创建button一样
    HU_CountDown *countDown = [HU_CountDown buttonWithType:UIButtonTypeCustom];
    countDown.frame = CGRectMake(100, 50, 100, 50);
    countDown.backgroundColor = [UIColor whiteColor];
    [countDown setTitle:@"获取验证码" forState:UIControlStateNormal];
    [countDown setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    countDown.countDownTime = 60;
    [countDown addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:countDown];
    
}

- (void)click:(HU_CountDown *)btn{

    [btn startCountDown];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
