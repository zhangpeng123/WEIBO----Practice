//
//  main.m
//  微博联系
//
//  Created by 张鹏 on 15/9/14.
//  Copyright (c) 2015年 Tony. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


//1.创建UIApplication对象
//2.创建Appdelegate对象， 并成为UIApplication对象属性代理
//3.开启主允许循环：目的让程序一直跑起来
//4.加载info.plist文件，判断一下info.plist文件里有没有main.storyboard,如果存在，就去加载main.storyboard


//main.storyboard
//1.初始化窗口
//2.加载storyboard文件， 并且创建箭头指向的控制器
//3.把新创建的控制器作为窗口的根控制器
//4. 让窗口显示
//  UIStoryboard storyboardWithName:@"Main" bundle:nil
int main(int argc, char * argv[]) {
    @autoreleasepool {
        
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        
//    //instantiateInitialViewController  默认加载箭头指向的控制器
//    [storyboard instantiateInitialViewController];

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
