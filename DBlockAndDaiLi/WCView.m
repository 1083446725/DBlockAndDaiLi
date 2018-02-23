//
//  WCView.m
//  dailiblock
//
//  Created by guodongdong on 2018/2/23.
//  Copyright © 2018年 Dawn. All rights reserved.
//

#import "WCView.h"

@interface WCView()

@property (nonatomic, strong) UIButton *btn;

@end

@implementation WCView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.btn addTarget:self action:@selector(wcviewBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.btn.frame = self.bounds;
}

- (void)wcviewBtnClick:(UIButton *)btn {
    if ([self.delegate respondsToSelector:@selector(wcviewBtnClick:)])
    {
        btn.tag = 100;
        [self.delegate wcviewBtnClick:btn];
    }
}

-(UIButton *)btn {
    if (_btn == nil) {
        _btn = [[UIButton alloc] init];
        _btn.backgroundColor = [UIColor redColor];
        [_btn setTitle:@"Delegate" forState:UIControlStateNormal];
        [self addSubview:_btn];
    }
    return _btn;
}

@end
