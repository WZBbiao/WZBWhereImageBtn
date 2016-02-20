# WZBWhereImageBtn
一句话实现btn内部控件调整任意位置

// 在开发中可能有这样的需求，一个button上有图片和文字，可能图片的位置位于文字的上方，也可能在下方左方和右方。
// 根据这个需求我封装了个btn，一句话实现随意设置button的imageView和titleLabel的位置

![image](https://github.com/WZBbiao/WZBWhereImageBtn/blob/master/01.png?raw=true)

// 方法如下：

// 导入头文件

#import "WZBWhereImageBtn.h"

// 实现类方法
/**
     *  一句话实现随意设置button的imageView和titleLabel位置，需要传入一个frame、普通图片，高亮图片
     *
     *  btnType：枚举值，图片相对文字的位置，目前只有上下左右四个方向，有兴趣的可以扩展左上、左下、又上和又下几个方向
     *  distance: 这个是个float类型参数，表示图片和文字之间的距离，可根据自己的实际需求设定
     *
     *  @return 返回一个WZBWhereImageBtn对象，可以用一个对象接收这个值设置其它属性，也可以根据自己的需求修改我的源码继续封装。
     */
    [WZBWhereImageBtn buttonWithFrame:CGRectMake(50, 20, 40, 80) title:@“测试” image:[UIImage imageNamed:@"home_default"] highlightedImage:[UIImage imageNamed:@"home"] btnType:0 distance:0 toView:self.view];
