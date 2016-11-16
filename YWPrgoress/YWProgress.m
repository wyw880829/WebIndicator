//
//  YWProgress.m
//  YWPrgoress
//
//  Created by wyw on 16/11/13.
//  Copyright © 2016年 wyw. All rights reserved.
//

#import "YWProgress.h"

@interface YWProgress()

/** 指示器数组 */
@property (nonatomic, strong) NSArray *progressChunks;

@end

static CGFloat chunksWidth = 40;

@implementation YWProgress

- (NSArray *)progressChunks
{
    if (_progressChunks == nil) {
        _progressChunks = @[
                            [[UIView alloc]initWithFrame:CGRectMake(-chunksWidth, 0, chunksWidth, self.frame.size.height)],
                            [[UIView alloc]initWithFrame:CGRectMake(-chunksWidth, 0, chunksWidth, self.frame.size.height)],
                            [[UIView alloc]initWithFrame:CGRectMake(-chunksWidth, 0, chunksWidth, self.frame.size.height)],
                            [[UIView alloc]initWithFrame:CGRectMake(-chunksWidth, 0, chunksWidth, self.frame.size.height)],
                            [[UIView alloc]initWithFrame:CGRectMake(-chunksWidth, 0, chunksWidth, self.frame.size.height)]
                            ];
        for (UIView *V in _progressChunks) {
            [self addSubview:V];
        }
    }
    return _progressChunks;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.BackColor = [UIColor whiteColor];
        self.ChunkColor = [UIColor greenColor];
    }
    return self;
}

- (void)setBackColor:(UIColor *)BackColor
{
    _BackColor = BackColor;
    self.backgroundColor = BackColor;
}
- (void)setChunkColor:(UIColor *)ChunkColor
{
    _ChunkColor = ChunkColor;
    
    for (UIView *V in self.progressChunks) {
        V.backgroundColor = ChunkColor;
    }
}

/**
 开始动画
 */
- (void)startAnimotion
{
    self.hidden = NO;
    NSTimeInterval delay = 0;
    for (UIView *v in self.progressChunks) {
        
        [self animotionChunk:v andDuration:0.75 andDelay:(delay += 0.25)];
    }
}

/**
 结束动画
 */
- (void)stopAnimotion
{
    self.progressChunks = nil;
    self.hidden = YES;
}

/**
 动画
 */
- (void)animotionChunk:(UIView *)V  andDuration:(CGFloat)duartion andDelay: (NSTimeInterval)delay
{
    [UIView animateWithDuration:duartion delay:delay options:UIViewAnimationOptionCurveEaseInOut animations:^{
        CGRect frame = V.frame;
        frame.origin.x = self.frame.size.width;
        V.frame = frame;
    } completion:^(BOOL finished) {
        CGRect frame = V.frame;
        frame.origin.x = -chunksWidth;
        V.frame = frame;
        if (finished) {
            [self animotionChunk:V andDuration:0.75 andDelay:delay];
        }
        
    }];
}

@end
