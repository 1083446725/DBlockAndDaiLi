//
//  DawnView.m
//  dailiblock
//
//  Created by guodongdong on 2018/2/23.
//  Copyright © 2018年 Dawn. All rights reserved.
//

#import "DawnView.h"

@interface DawnView ()
@property (nonatomic, strong) UIButton *btn;
@end

@implementation DawnView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

// 点击事件
- (void)btnClick:(UIButton *)btn {
    if (self.dawnViewBtnBlock) {
        btn.tag = 102;
        self.dawnViewBtnBlock(btn);
    }
}

// 给Block赋值
- (void)buttonWhenClick:(void(^)(UIButton *btn))block {
    self.dawnViewBtnBlock = block;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.btn.frame = self.bounds;
}

-(UIButton *)btn {
    if (_btn == nil) {
        _btn = [[UIButton alloc] init];
        _btn.backgroundColor = [UIColor greenColor];
        [_btn setTitle:@"Block1" forState:UIControlStateNormal];
        [self addSubview:_btn];
    }
    return _btn;
}
@end
