//
//  UIImage+image.m
//  
//
//  Created by 张鹏 on 15/9/15.
//
//

#import "UIImage+image.h"

@implementation UIImage (image)

+(instancetype)imageWithOriginalName:(NSString *)imageName
{
    
    UIImage *image = [UIImage imageNamed:imageName];
    //选中图片不渲染
    return  [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
}
@end
