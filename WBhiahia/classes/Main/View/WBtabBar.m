//
//  WBtabBar.m
//  
//
//  Created by 张鹏 on 15/9/16.
//
//

#import "WBtabBar.h"

@interface WBtabBar ()

@property (nonatomic, weak) UIButton *plusButton;

@end


@implementation WBtabBar

- (UIButton *)plusButton
{
    if (_plusButton == nil) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_background_icon_add"] forState:UIControlStateHighlighted];
        
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        
        
        //设置按钮的尺寸和背景图片一样大小
        
        [btn sizeToFit];
        
        _plusButton = btn;
        
        [self addSubview:_plusButton];
        
    }
    
    return _plusButton;
}

//调整子空间的位置
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    
    //self.items UITabBarItem模型， 有多少个子控制器， 就有多少个UITabBarItem模型
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    CGFloat btnW = w/(self.items.count + 1);
    CGFloat btnH = self.bounds.size.height;
    
    int i = 0;
    //调整系统自带的tabBar上的按钮位置
    for (UIView *tabBarButton in self.subviews) {
        //判断下是否是UITabBarButton
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == 2) {
                i = 3;
            }
            
            btnX = i *btnW;
            
            tabBarButton.frame = CGRectMake(btnX, btnY, btnW, btnH);
            
            i++;
        }
    }
    
    
    
    //设置添加按钮的位置
    self.plusButton.center = CGPointMake(w * 0.5, h * 0.5);
    
    
}
@end
