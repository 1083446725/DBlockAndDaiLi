//
//  DawnView.h
//  dailiblock
//
//  Created by guodongdong on 2018/2/23.
//  Copyright © 2018年 Dawn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DawnView : UIView

@property (nonatomic, copy) void (^dawnViewBtnBlock) (UIButton *btn);

- (void)buttonWhenClick:(void(^)(UIButton *btn))block;

@end
