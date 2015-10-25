//
//  AppDelegate.m
//  微博联系
//
//  Created by 张鹏 on 15/9/14.
//  Copyright (c) 2015年 Tony. All rights reserved.
//

#import "AppDelegate.h"
#import "WBTabBarViewController.h"
/**
 *LaunchScreen:代替之前的启动图片
 * 程序中碰见模拟器尺寸不对， 马上去找启动图片， 默认模拟器的尺寸由启动图片决定
 **/


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor yellowColor];
    
    //创建tabbar(不需要根控制器)
 
    //UITabBarController控制器一创建的时候就会加载view
    //UIViewController的view,才是懒加载
    WBTabBarViewController *tabbarVC = [[WBTabBarViewController alloc] init];

    tabbarVC.view.backgroundColor = [UIColor redColor];
    
    //设置窗口的根控制器
    self.window.rootViewController = tabbarVC;
    
    
    //显示窗口
    //底层：1.application.keywindow = self.window
    //    2.self.window.hidden = NO; 默认是隐藏的。
    [self.window makeKeyAndVisible];
    
    
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
