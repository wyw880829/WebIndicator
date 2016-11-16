//
//  YWProgress.h
//  YWPrgoress
//
//  Created by wyw on 16/11/13.
//  Copyright © 2016年 wyw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YWProgress : UIView

/** 轨道背景颜色 */
@property (nonatomic, strong) UIColor *BackColor;

/** 指示器背景颜色 */
@property (nonatomic, strong) UIColor *ChunkColor;

/// 停止动画
- (void)stopAnimotion;

/// 开始动画
- (void)startAnimotion;

@end
