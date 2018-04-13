//
//  LYButton.m
//  Test
//
//  Created by huihuadeng on 2018/4/10.
//  Copyright © 2018年 huihuadeng. All rights reserved.
//

#import "SHButton.h"

@implementation SHButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)test {
    [self removeFromSuperview];
    
    BOOL res1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
    BOOL res2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
    BOOL res3 = [(id)[SHButton class] isKindOfClass:[SHButton class]];
    BOOL res4 = [(id)[SHButton class] isMemberOfClass:[SHButton class]];
    NSLog(@"%d %d %d %d", res1, res2, res3, res4);
}

- (void)test2 {
    __weak typeof (SHButton *) weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        [weakSelf removeFromSuperview];
        NSLog(@"%@", (weakSelf == nil) ? @"YES" : @"NO");
    });
}

@end
