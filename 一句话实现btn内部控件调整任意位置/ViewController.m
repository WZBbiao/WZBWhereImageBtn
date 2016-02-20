//
//  ViewController.m
//  一句话实现btn内部控件调整任意位置
//
//  Created by apple on 16/2/14.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "WZBWhereImageBtn.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  一句话实现随意设置button的imageView和titleLabel位置，需要传入一个frame、普通图片，高亮图片
     *
     *  btnType：枚举值，图片相对文字的位置（相对文字的位置，相对文字的位置），目前只有上下左右四个方向，有兴趣的可以扩展左上、左下、又上和又下几个方向
     *  distance: 这个是个float类型参数，表示图片和文字之间的距离，可根据自己的实际需求设定
     *
     *  @return 返回一个WZBWhereImageBtn对象，可以用一个对象接收这个值设置其它属性，也可以根据自己的需求修改我的源码继续封装。
     */
    [WZBWhereImageBtn buttonWithFrame:CGRectMake(50, 20, 40, 80) title:@"上" image:[UIImage imageNamed:@"home_default"] highlightedImage:[UIImage imageNamed:@"home"] btnType:0 distance:0 toView:self.view];
    
    [WZBWhereImageBtn buttonWithFrame:CGRectMake(50, 150, 40, 80) title:@"下" image:[UIImage imageNamed:@"home_default"] highlightedImage:[UIImage imageNamed:@"home"] btnType:WZBWhereImageBtnTypeDown distance:0 toView:self.view];
    
    [WZBWhereImageBtn buttonWithFrame:CGRectMake(150, 30, 80, 50) title:@"左" image:[UIImage imageNamed:@"home_default"] highlightedImage:[UIImage imageNamed:@"home"] btnType:WZBWhereImageBtnTypeLeft distance:0 toView:self.view];
    
    [[WZBWhereImageBtn buttonWithFrame:CGRectMake(150, 160, 80, 50) title:@"右" image:[UIImage imageNamed:@"home_default"] highlightedImage:[UIImage imageNamed:@"home"] btnType:WZBWhereImageBtnTypeRight distance:0 toView:self.view] addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)click {
    NSLog(@"右");
}

@end
