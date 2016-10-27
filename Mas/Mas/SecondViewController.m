//
//  SecondViewController.m
//  Mas
//
//  Created by 我叫MT on 16/10/27.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import "SecondViewController.h"
#import <Masonry/Masonry.h>
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    // 创建一个装载九宫格的容器
    UIView *containerView = [[UIView alloc] init];
    [self.view addSubview:containerView];
    containerView.backgroundColor = [UIColor whiteColor];
    containerView.layer.borderWidth = 1;
    containerView.layer.borderColor = [UIColor grayColor].CGColor;
    
    // 给该容器添加布局代码
    [containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.top.mas_equalTo(66);
        make.right.mas_equalTo(-15);
        make.height.mas_equalTo(300);
    }];
    // 为该容器添加宫格View
    for (int i = 0; i < 10; i++) {
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor cyanColor];
       // view.backgroundColor = [UIColor randomColor];
        [containerView addSubview:view];
    }
    // 执行九宫格布局
//    [containerView.subviews mas_distributeSudokuViewsWithFixedItemWidth:0 fixedItemHeight:0 fixedLineSpacing:10 fixedInteritemSpacing:20 warpCount:3 topSpacing:10 bottomSpacing:10 leadSpacing:10 tailSpacing:10];
    [containerView.subviews mas_distributeViewsAlongAxis:0 withFixedSpacing:0.5 leadSpacing:-10 tailSpacing:1];

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
