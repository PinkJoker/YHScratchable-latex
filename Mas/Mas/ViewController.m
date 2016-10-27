//
//  ViewController.m
//  Mas
//
//  Created by 我叫MT on 16/10/27.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"
#import <Masonry/Masonry.h>
#import "SecondViewController.h"
#define kWidth     [UIScreen mainScreen].bounds.size.width
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    TestView *item1 = [TestView new];
    item1.titleLabel.text = @"item1";
    item1.backgroundColor = [UIColor yellowColor];
    TestView *item2 = [TestView new];
        item2.titleLabel.text = @"item2";
    item2.backgroundColor = [UIColor cyanColor];
    TestView *item3 = [TestView new];
        item3.titleLabel.text = @"item3";
    item3.backgroundColor = [UIColor greenColor];
    TestView *item4 = [TestView new];
        item4.titleLabel.text = @"item4";
    item4.backgroundColor = [UIColor grayColor];
    TestView *item5 = [TestView new];
    item5.titleLabel.text = @"item5";
    item1.backgroundColor = [UIColor yellowColor];
    TestView *item6 = [TestView new];
    item6.titleLabel.text = @"item6";
    item2.backgroundColor = [UIColor cyanColor];
    TestView *item7 = [TestView new];
    item7.titleLabel.text = @"item8";
    item3.backgroundColor = [UIColor greenColor];
    TestView *item8 = [TestView new];
    item8.titleLabel.text = @"item9";
    item4.backgroundColor = [UIColor grayColor];
    [self.view addSubview:item1];
    [self.view addSubview:item2];
    [self.view addSubview:item3];
    [self.view addSubview:item4];
    [self.view addSubview:item5];
    [self.view addSubview:item6];
    [self.view addSubview:item7];
    [self.view addSubview:item8];
    NSArray *array = @[item1,item2,item3,item4];
    NSArray *array1 = @[item5,item6,item7,item8];
//    NSArray *array2 = [@[array,array1]];
  
    [array mas_distributeViewsAlongAxis:0 withFixedSpacing:0.5 leadSpacing:-10 tailSpacing:0];
    
    [array1 mas_distributeViewsAlongAxis:0 withFixedSpacing:0.5 leadSpacing:-10 tailSpacing:0];
    CGFloat height = (kWidth - 1.5)*0.25;
    [array mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100);
        make.height.mas_equalTo(height);
    }];
    [array1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100+height+0.5);
        make.height.mas_equalTo(height);
    }];
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i<4; i++) {
        TestView *view = [TestView new];
        [self.view addSubview:view];
        [arr addObject:view];
    }
    NSArray *arr1 = [arr copy];
    [arr1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100 +height*2+1);
        make.height.mas_equalTo(height);
    }];
    [arr1 mas_distributeViewsAlongAxis:0 withFixedSpacing:0.5 leadSpacing:-10 tailSpacing:0];
    NSMutableArray *lastArray = [NSMutableArray array];
    for (int i = 0; i<4; i++) {
        TestView *view = [TestView new];
        [self.view addSubview:view];
        [lastArray addObject:view];
    }
    NSArray *lastArr = [lastArray copy];
    [lastArr mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100 +height*3+1.5);
        make.height.mas_equalTo(height);
    }];
    [lastArr mas_distributeViewsAlongAxis:0 withFixedSpacing:0.5 leadSpacing:-10 tailSpacing:0];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickItem)];
    [item2 addGestureRecognizer:tap];
    
    
    
}

-(void)clickItem{
    SecondViewController *second = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:second animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
