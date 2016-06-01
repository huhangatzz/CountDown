//
//  HU_CountDown.m
//  倒计时
//
//  Created by huhang on 15/11/28.
//  Copyright (c) 2015年 huhang. All rights reserved.
//

#import "HU_CountDown.h"

@interface HU_CountDown()

/** 显示数字 */
@property (nonatomic,strong)UILabel *timeLb;
/** 定时器*/
@property (nonatomic,strong)NSTimer *timer;
/** 时间间隔 */
@property (nonatomic,assign)NSTimeInterval startTimeCount;

@end

@implementation HU_CountDown

#pragma mark 开始计数
- (void)startCountDown{
  
    //关闭交互
    self.enabled = NO;
    
    //创建label
    UILabel *timeLb = [[UILabel alloc]initWithFrame:self.bounds];
    timeLb.textAlignment = NSTextAlignmentCenter;
    timeLb.textColor = [UIColor blackColor];
    timeLb.backgroundColor = self.backgroundColor;
    timeLb.text = [NSString stringWithFormat:@"%.0f",self.startTimeCount];
    [self addSubview:timeLb];
    self.timeLb = timeLb;
    
    //设置定时器
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
}

#pragma mark 计时器响应方法
- (void)timerAction{

    //添加文字
    self.timeLb.text = [NSString stringWithFormat:@"%.0f",--self.startTimeCount];
    if (_startTimeCount == 0) {
        //把交互打开
        self.enabled = YES;
        //把label移除
        [_timeLb removeFromSuperview];
        //重新设置倒计时间
        self.startTimeCount = self.countDownTime;
        if ([_timer isValid]) {
            //暂停定时器
            [_timer invalidate];
        }
    }
}

- (void)setCountDownTime:(NSTimeInterval)countDownTime{
    
    _countDownTime = countDownTime;
    _startTimeCount = countDownTime;
}

@end
