//
//  WZBWhereImageBtn.h
//  一句话实现btn内部控件调整任意位置
//
//  Created by apple on 16/2/14.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

// 枚举
typedef enum {
    WZBWhereImageBtnTypeUp = 0,
    WZBWhereImageBtnTypeDown,
    WZBWhereImageBtnTypeLeft,
    WZBWhereImageBtnTypeRight
}WZBWhereImageBtnType;

@interface WZBWhereImageBtn : UIButton

// 核心方法
+ (instancetype)buttonWithFrame:(CGRect)frame title:(NSString *)title image:(UIImage *)image highlightedImage:(UIImage *)highlightedImage btnType:(WZBWhereImageBtnType)btnType distance:(CGFloat)distance toView:(UIView *)view;

@property (nonatomic, assign) WZBWhereImageBtnType btnType;

@property (assign, nonatomic) CGFloat distance;

@end
