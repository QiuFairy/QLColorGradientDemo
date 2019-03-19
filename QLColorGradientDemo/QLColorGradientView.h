//
//  QLColorGradientView.h
//  QLColorGradientDemo
//
//  Created by qiu on 2017/5/11.
//  Copyright © 2017年 QiuFairy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SXGradientDirection) {
    SXGradientToTop = 1,
    SXGradientToLeft = 2,
    SXGradientToBottom = 3,
    SXGradientToRight = 4,
};

@interface QLColorGradientView : UIView

/**
 *  use one color to init the gradientView,default is this color to clear.
 *
 *   can you see other view what below the gradientView
 *  @param direction  the direction we want gradient to clear
 *
 *  @return view
 */
+ (instancetype)createWithColor:(UIColor *)color frame:(CGRect)frame direction:(SXGradientDirection)direction;

/**
 *  use two color to init the gradientView, from fromColor gradient to toColor
 *
 *  @param direction the direction we want gradient to toColor
 *
 *  @return view
 */
+ (instancetype)createWithFromColor:(UIColor *)fromColor toColor:(UIColor *)toColor frame:(CGRect)frame direction:(SXGradientDirection)direction;

/**
 *  use a colorArray to generate a wonderful gradientView.
 *
 *  @param colorArray array with UIColor
 *
 *  @return view
 */
+ (instancetype)createWithColorArray:(NSArray *)colorArray frame:(CGRect)frame direction:(SXGradientDirection)direction;
@end
