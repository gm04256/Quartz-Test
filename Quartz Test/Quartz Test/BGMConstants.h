//
//  BGMConstants.h
//  Quartz Test
//
//  Created by 馬 岩 on 14-6-18.
//  Copyright (c) 2014年 馬 岩. All rights reserved.
//

#ifndef Quartz_Test_BGMConstants_h
#define Quartz_Test_BGMConstants_h

typedef NS_ENUM(NSInteger, ShapeType)
{
    kLineShape = 0,
    kRectShape,
    kEllipseShape,
    kImageShape
};
typedef NS_ENUM(NSInteger, ColorTabIndex)
{
    kRedColorTab = 0,
    kBlueColorTab,
    kYellowColorTab,
    kGreenColorTab,
    kRandomColorTab
};
#define degreesToRadian(x) (M_PI * (x) / 180.0)

#endif
