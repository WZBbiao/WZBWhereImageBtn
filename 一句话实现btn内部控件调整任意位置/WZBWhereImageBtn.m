//
//  WZBWhereImageBtn.m
//  一句话实现btn内部控件调整任意位置
//
//  Created by apple on 16/2/14.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "WZBWhereImageBtn.h"

@implementation WZBWhereImageBtn

+ (instancetype)buttonWithFrame:(CGRect)frame title:(NSString *)title image:(UIImage *)image highlightedImage:(UIImage *)highlightedImage btnType:(WZBWhereImageBtnType)btnType distance:(CGFloat)distance toView:(UIView *)view{
    
    // 先创建一个btn，把外界对应的值传一下
    WZBWhereImageBtn *btn = [[WZBWhereImageBtn alloc] initWithFrame:frame];
    
    // 这是我给的颜色，具体自己改
    btn.titleLabel.backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
    btn.imageView.backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
    
    // 设置基本一些属性
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highlightedImage forState:UIControlStateHighlighted];
    btn.titleLabel.font = [UIFont systemFontOfSize:15.0];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    // 这个是图片和文字间的距离
    btn.distance = distance;
    
    // 图片相对文字的位置
    btn.btnType = btnType;
    
    // 添加到view上
    [view addSubview:btn];
    return btn;
}

// 重写UIButton的两个方法，此方法设置btn内部imageView的frame
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    
    // 根据btnType返回ImageView不同的frame，具体怎么算的不需要解释
    switch (self.btnType) {
            
        case WZBWhereImageBtnTypeUp:{ // 图片在上
            CGFloat imageW = contentRect.size.width;
            CGFloat imageH = contentRect.size.height * 0.5 - self.distance / 2;
            return CGRectMake(0, 0, imageW, imageH);
        }
            break;
        case WZBWhereImageBtnTypeDown:{ // 图片在下
            CGFloat imageX = 0;
            CGFloat imageY = contentRect.size.height * 0.5 + self.distance / 2;
            CGFloat imageW = contentRect.size.width;
            CGFloat imageH = contentRect.size.height * 0.5 - self.distance / 2;
            return CGRectMake(imageX, imageY, imageW, imageH);
        }
            break;
        case WZBWhereImageBtnTypeLeft:{ // 图片在左
            CGFloat imageW = contentRect.size.width * 0.5 - self.distance / 2;
            CGFloat imageH = contentRect.size.height;
            return CGRectMake(0, 0, imageW, imageH);
        }
            break;
        case WZBWhereImageBtnTypeRight:{ // 图片在右
            CGFloat imageX = contentRect.size.width * 0.5 + self.distance / 2;
            CGFloat imageW = contentRect.size.width * 0.5;
            CGFloat imageH = contentRect.size.height;
            return CGRectMake(imageX, 0, imageW, imageH);
        }
            break;
            
        default:
            break;
    }
    return CGRectZero;
}


// 重写UIButton的两个方法，此方法设置btn内部titleLabel的frame
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    
    // 根据btnType返回titleLabel不同的frame，具体怎么算的不需要解释
    switch (self.btnType) {
            
        case WZBWhereImageBtnTypeUp:{ // 图片在上
            CGFloat titleY = contentRect.size.height * 0.5 + self.distance / 2;
            CGFloat titleW = contentRect.size.width;
            CGFloat titleH = contentRect.size.height * 0.5 - self.distance / 2;
            return CGRectMake(0, titleY, titleW, titleH);
        }
            break;
        case WZBWhereImageBtnTypeDown:{ // 图片在下
            CGFloat titleW = contentRect.size.width;
            CGFloat titleH = contentRect.size.height * 0.5 - self.distance / 2;
            return CGRectMake(0, 0, titleW, titleH);
        }
            break;
        case WZBWhereImageBtnTypeLeft:{ // 图片在左
            CGFloat titleX = contentRect.size.width * 0.5 + self.distance / 2;
            CGFloat titleW = contentRect.size.width * 0.5 - self.distance / 2;
            CGFloat titleH = contentRect.size.height;
            return CGRectMake(titleX, 0, titleW, titleH);
        }
            break;
        case WZBWhereImageBtnTypeRight:{ // 图片在右
            CGFloat titleW = contentRect.size.width * 0.5 - self.distance / 2;
            CGFloat titleH = contentRect.size.height;
            return CGRectMake(0, 0, titleW, titleH);
        }
            break;
            
        default:
            break;
    }
    return CGRectZero;
}

@end
