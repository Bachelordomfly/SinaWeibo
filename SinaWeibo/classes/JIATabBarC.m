//
//  JIATabBarC.m
//  SinaWeibo
//
//  Created by mac-025 on 15/11/25.
//  Copyright © 2015年 XuJiajia. All rights reserved.
//

#import "JIATabBarC.h"
#import "JIANC.h"
#import "Header.h"

@interface JIATabBarC ()

@end

@implementation JIATabBarC

+(void)initialize
{
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self initChildViewController];
    
    
}

-(void)initChildViewController{
    
    
    //我的主页
    JIAHeadTVC *headPageTVC = [[JIAHeadTVC alloc]init];
    
    
    headPageTVC.tabBarItem.title = @"首页";
    
    headPageTVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    
    headPageTVC.tabBarItem.selectedImage =[[UIImage imageNamed:@"tabbar_home_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    JIANC *headPageNC = [[JIANC alloc]initWithRootViewController:headPageTVC];
    
    [self addChildViewController:headPageNC];
    
    //消息
    JIANewsTableViewController  *newsTVC = [[JIANewsTableViewController alloc]init];
    
    newsTVC.tabBarItem.title = @"消息";
    
    newsTVC.tabBarItem.image = [[UIImage imageNamed:@"tabbar_message_center"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    newsTVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_message_center_selected" ] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    JIANC *newsNC = [[JIANC alloc]initWithRootViewController:newsTVC];
    
    [self addChildViewController:newsNC];
    
    
    //添加
    JIAAddVC *addVC = [[JIAAddVC alloc]init];
    
    addVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_compose_background_icon_add-1"];
    addVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_compose_background_icon_add"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    JIANC *addNC =[[JIANC alloc]initWithRootViewController:addVC];
    
    [self addChildViewController:addNC];
    
    
    //发现
    JIAFoundTVC *foundTVC = [[JIAFoundTVC alloc]init];
    
    foundTVC.tabBarItem.title = @"发现";
    
    foundTVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    foundTVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_discover_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    JIANC *foundNC =[[JIANC alloc]initWithRootViewController:foundTVC];
    
    [self addChildViewController:foundNC];
    
    //我
    JIAMeTVC *meVC = [[JIAMeTVC alloc]init];
    
    meVC.tabBarItem.title = @"我";
    meVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    meVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_profile_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    JIANC *meNC =[[JIANC alloc]initWithRootViewController:meVC];
    
    [self addChildViewController:meNC];
    
    
    
    
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
