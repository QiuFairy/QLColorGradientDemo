//
//  UIColor+Separate.h
//  QLColorGradientDemo
//
//  Created by qiu on 2017/5/11.
//  Copyright © 2017年 QiuFairy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SXColorType) {
    SXColorTypeRed = 1,
    SXColorTypeGreen = 2,
    SXColorTypeBlue = 3,
    SXColorTypeAlpha = 4
};

@interface UIColor (Separate)

- (CGColorSpaceModel) colorSpaceModel;
- (CGFloat) red;
- (CGFloat) green;
- (CGFloat) blue;
- (CGFloat) alpha;

- (UIColor *)reverseColor;
- (NSString *)printDetail;

- (UIColor *)up:(SXColorType)type num:(NSInteger)num;
- (UIColor *)down:(SXColorType)type num:(NSInteger)num;


@end
