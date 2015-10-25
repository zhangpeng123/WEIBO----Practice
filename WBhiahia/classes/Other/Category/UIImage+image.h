//
//  UIImage+image.h
//  
//
//  Created by 张鹏 on 15/9/15.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (image)

//instancetype默认会识别当前是哪个类或者对象调用，就会转换成对应的类的对象

//加载最原始的图片，没有渲染
+ (instancetype)imageWithOriginalName:(NSString *)imageName;
@end
