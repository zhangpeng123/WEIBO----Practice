//
//  WBNaigationController.m
//  
//
//  Created by 张鹏 on 15/9/21.
//
//

#import "WBNaigationController.h"

@interface WBNaigationController ()

@end

@implementation WBNaigationController

+ (void)initialize
{
    //获取当前类下面的UIBarButtonItem
    
    UIBarButtonItem *item = [UIBarButtonItem appearanceWhenContainedIn:self, nil];
    
    //设置导航条按钮的文字颜色
    NSMutableDictionary *titleArr = [NSMutableDictionary dictionary];
    
    titleArr[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    [item setTitleTextAttributes:titleArr forState:UIControlStateNormal];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
