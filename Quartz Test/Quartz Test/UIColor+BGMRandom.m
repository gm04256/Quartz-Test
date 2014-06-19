//
//  UIColor+BGMRandom.m
//  Quartz Test
//
//  Created by 馬 岩 on 14-6-18.
//  Copyright (c) 2014年 馬 岩. All rights reserved.
//

#import "UIColor+BGMRandom.h"

#define ARC4RANDOM_MAX 0x100000000LL

@implementation UIColor (BGMRandom)

+ (UIColor *)randomColor
{
    CGFloat red = (CGFloat)arc4random() / (CGFloat)ARC4RANDOM_MAX;
    CGFloat blue = (CGFloat)arc4random() / (CGFloat)ARC4RANDOM_MAX;
    CGFloat green = (CGFloat)arc4random() / (CGFloat)ARC4RANDOM_MAX;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
