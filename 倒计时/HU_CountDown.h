//
//  HU_CountDown.h
//  倒计时
//
//  Created by huhang on 15/11/28.
//  Copyright (c) 2015年 huhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HU_CountDown : UIButton

//倒计时间
@property (nonatomic,assign)NSTimeInterval countDownTime;

//开始计数
- (void)startCountDown;

@end
