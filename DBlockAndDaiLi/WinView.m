//
//  WinView.m
//  dailiblock
//
//  Created by guodongdong on 2018/2/23.
//  Copyright © 2018年 Dawn. All rights reserved.
//

#import "WinView.h"

@interface WinView ()
@property (nonatomic, strong) UIButton *btn;
@end

@implementation WinView

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
    if (self.btnClickBlock) {
        btn.tag = 101;
        self.btnClickBlock(btn);
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.btn.frame = self.bounds;
}


-(UIButton *)btn {
    if (_btn == nil) {
        _btn = [[UIButton alloc] init];
        _btn.backgroundColor = [UIColor blueColor];
        [_btn setTitle:@"Block" forState:UIControlStateNormal];
        [self addSubview:_btn];
    }
    return _btn;
}
@end
