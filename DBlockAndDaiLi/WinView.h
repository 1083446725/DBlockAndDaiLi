//
//  WinView.h
//  dailiblock
//
//  Created by guodongdong on 2018/2/23.
//  Copyright © 2018年 Dawn. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^btnClickBlock) (UIButton *btn);

@interface WinView : UIView

@property (nonatomic, copy) btnClickBlock btnClickBlock;

@end
