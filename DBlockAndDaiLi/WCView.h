//
//  WCView.h
//  dailiblock
//
//  Created by guodongdong on 2018/2/23.
//  Copyright © 2018年 Dawn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol WCViewDelegate <NSObject>
@optional
- (void)wcviewBtnClick:(UIButton *)btn;

@end

@interface WCView : UIView

@property (nonatomic, weak) id <WCViewDelegate> delegate;

@end
