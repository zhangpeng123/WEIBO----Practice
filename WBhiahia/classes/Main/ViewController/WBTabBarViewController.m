//
//  WBTabBarViewController.m
//  
//
//  Created by 张鹏 on 15/9/14.
//
//

#import "WBTabBarViewController.h"
#import "UIImage+image.h"
#import <UIKit/UIKit.h>
#import "WBtabBar.h"

#import "WBDiscoverViewController.h"
#import "WBMessageViewController.h"
#import "WBHomeViewController.h"
#import "WBProfileViewController.h"

#import "WBNaigationController.h"

@interface WBTabBarViewController ()

@property (nonatomic, strong) NSMutableArray *items;

@property (nonatomic, weak) WBHomeViewController *home;

@end

@implementation WBTabBarViewController

//什么时候调用：程序一启动的时候就会把所有的类加载进内存
//作用：加载类的时候调用
//+ (void)load{
//    
//    NSLog(@"========%s", __func__);
//    
//}

//什么时候调用：当第一次使用这个类或者子类的时候调用
//作用：初始化类

//appearance 只要一个类遵守UIAppearance协议，就能获取全局的外观，一般UI控件都可以。
+ (void)initialize{
    
    //获取所有tabBarItem标识 不严谨，一般不用
  //  UITabBarItem *item = [UITabBarItem appearance];
    
    //获取当前类下面的tabBarItem
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    
    NSMutableDictionary *att = [NSMutableDictionary dictionary];
                          
    [att setObject:[UIColor orangeColor] forKey:NSForegroundColorAttributeName];
                          
    [item setTitleTextAttributes:att forState:UIControlStateSelected];
                          
                          
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

    //添加所有子控制器
    [self setUpAllChildViewController];
    
    //修改系统自带的tabBar上面的按钮的位置
    //自定义tabbar
    WBtabBar *tabbar = [[WBtabBar alloc] initWithFrame:self.tabBar.frame];
    
    //不能直接赋给self.tabBar(readOnly),利用KVC修改这样的情况
    [self setValue:tabbar forKeyPath:@"tabBar"];
   //底层实现
 //   objc_msgSend(self, @selector(setTabBar:), tabbar);
    
}

//iOS7 之后默认会把tabBar上的面的按钮颜色渲染
#pragma mark 添加所有子控制器
- (void)setUpAllChildViewController
{
    //管理子控制器
    WBHomeViewController *home = [[WBHomeViewController alloc] init];
  
    [self setUpOneChildViewController:home image:[UIImage imageNamed:@"tabbar_home"] selectImage:[UIImage imageWithOriginalName:@"tabbar_home_selected"] titile:@"首页"];
    
    home.view.backgroundColor = [UIColor greenColor];
    
    //消息
    WBMessageViewController *message = [[WBMessageViewController alloc] init];
    
    [self setUpOneChildViewController:message image:[UIImage imageNamed:@"tabbar_message_center"] selectImage:[UIImage imageWithOriginalName:@"tabbar_message_center_selected"] titile:@"消息"];

    
    message.view.backgroundColor = [UIColor blueColor];
    
    
    //发现
    WBDiscoverViewController *discover = [[WBDiscoverViewController alloc] init];
    [self setUpOneChildViewController:discover image:[UIImage imageNamed:@"tabbar_discover"] selectImage:[UIImage imageWithOriginalName:@"tabbar_discover_selected"] titile:@"发现"];

    discover.view.backgroundColor = [UIColor purpleColor];
    
    
    //我
    WBProfileViewController *profile = [[WBProfileViewController alloc] init];

    [self setUpOneChildViewController:profile image:[UIImage imageNamed:@"tabbar_profile"] selectImage:[UIImage imageWithOriginalName:@"tabbar_profile_selected"] titile:@"我"];
    
    profile.view.backgroundColor = [UIColor lightGrayColor];
    

    
}

#pragma mark 添加一个子控制器
- (void)setUpOneChildViewController:(UIViewController *)vc image:(UIImage *)image selectImage:(UIImage *)selectedImage titile:(NSString *)title
{
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selectedImage;
    vc.tabBarItem.badgeValue = @"10";
    //如果通过模型设置控件的文字颜色，只能通过文本属性（富文本， 颜色， 字体，空心，图文混排）
    
   
    
    
    [self addChildViewController:vc];
}


@end
