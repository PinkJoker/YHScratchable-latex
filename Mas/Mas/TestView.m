//
//  TestView.m
//  Mas
//
//  Created by 我叫MT on 16/10/27.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

#import "TestView.h"
#import <Masonry/Masonry.h>
@implementation TestView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatView];
        self.backgroundColor = [UIColor cyanColor];
    }
    return self;
}

-(void)creatView
{
    self.imageView = [[UIImageView alloc]init];
    [self addSubview:self.imageView];
    self.imageView.backgroundColor = [UIColor greenColor];
    self.titleLabel = [[UILabel alloc]init];
    [self addSubview:self.titleLabel];
    self.titleLabel.text = @"测试";
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(10);
        make.left.right.mas_equalTo(0);
        make.height.mas_equalTo(40);
    }];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.imageView.mas_bottom).offset(5);
        make.centerX.mas_equalTo(self.imageView.mas_centerX);
    }];
    
}


@end
