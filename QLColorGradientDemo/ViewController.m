//
//  ViewController.m
//  QLColorGradientDemo
//
//  Created by qiu on 2017/5/11.
//  Copyright © 2017年 QiuFairy. All rights reserved.
//

#import "ViewController.h"

#import "UIColor+Wonderful.h"
#import "QLColorGradientView.h"
//#import "SXDataSource.h"

@interface ViewController ()
@property (strong, nonatomic) UIView *gradientContent;
@property(nonatomic,weak)QLColorGradientView *grv1;
@property(nonatomic,weak)QLColorGradientView *grv2;
@property(nonatomic,weak)QLColorGradientView *grv3;
@property(nonatomic,weak)QLColorGradientView *grv4;

@property(nonatomic,weak)QLColorGradientView *grv5;

@property(nonatomic,weak)QLColorGradientView *grv6;
@property(nonatomic,weak)QLColorGradientView *grv7;

//@property(nonatomic,strong)SXDataSource *dataSource;

@property (strong, nonatomic) UILabel *msgLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"SXColorGradientView";
    
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(20, 100, 300, 300)];
    [self.view addSubview:bgView];
    self.gradientContent = bgView;
    
    [self randomGradient];
    
    
    
    //双层展示渐变
    NSArray *colorArray = @[Wonderful_BlueColor4,Wonderful_PurpleColor5,Wonderful_PinkColor5,Wonderful_RedColor5,Wonderful_YelloeColor5,Wonderful_GreenColor3,Wonderful_CyanColor4];
    CGRect rect = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 255, 375, 255);
    QLColorGradientView *grv5 = [QLColorGradientView createWithColorArray:colorArray frame:rect direction:SXGradientToRight];
    QLColorGradientView *grv5_5 = [QLColorGradientView createWithColor:[UIColor whiteColor] frame:rect direction:SXGradientToBottom];
    
    [self.view addSubview:grv5];
    [self.view addSubview:grv5_5];
    
}

- (void)randomGradient {
    [self.grv1 removeFromSuperview];
    [self.grv2 removeFromSuperview];
    [self.grv3 removeFromSuperview];
    [self.grv4 removeFromSuperview];
    [self.grv6 removeFromSuperview];
    [self.grv7 removeFromSuperview];
    
    self.grv1 = nil;
    self.grv2 = nil;
    self.grv3 = nil;
    self.grv4 = nil;
    self.grv6 = nil;
    self.grv7 = nil;
    
    
    QLColorGradientView *grv1 = [QLColorGradientView createWithColor:SXRGB16Color(100) frame:CGRectMake(10, 10, 80, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv1];
    
    QLColorGradientView *grv2 = [QLColorGradientView createWithColor:SXRGB16Color(200) frame:CGRectMake(100, 10, 80, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv2];
    
    QLColorGradientView *grv3 = [QLColorGradientView createWithFromColor:SXRGB16Color(10) toColor:SXRGB16Color(116) frame:CGRectMake(10, 50, 80, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv3];
    
    QLColorGradientView *grv4 = [QLColorGradientView createWithFromColor:SXRGB16Color(10) toColor:SXRGB16Color(220) frame:CGRectMake(100, 50, 80, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv4];
    
    
    NSArray *array6 = @[SXRGB16Color(100),SXRGB16Color(12),SXRGB16Color(200)];
    QLColorGradientView *grv6 = [QLColorGradientView createWithColorArray:array6 frame:CGRectMake(10, 100, 335, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv6];
    
    NSArray *array7 = @[SXRGB16Color(10),SXRGB16Color(120),SXRGB16Color(80),SXRGB16Color(20),SXRGB16Color(200)];
    QLColorGradientView *grv7 = [QLColorGradientView createWithColorArray:array7 frame:CGRectMake(10, 140, 335, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv7];
    
    
    grv1.layer.cornerRadius = 2;
    grv1.layer.masksToBounds = YES;
    self.grv1 = grv1;
    
    grv2.layer.cornerRadius = 2;
    grv2.layer.masksToBounds = YES;
    self.grv2 = grv2;
    
    grv3.layer.cornerRadius = 2;
    grv3.layer.masksToBounds = YES;
    self.grv3 = grv3;
    
    grv4.layer.cornerRadius = 2;
    grv4.layer.masksToBounds = YES;
    self.grv4 = grv4;
    
    grv6.layer.cornerRadius = 2;
    grv6.layer.masksToBounds = YES;
    self.grv6 = grv6;
    
    grv7.layer.cornerRadius = 2;
    grv7.layer.masksToBounds = YES;
    self.grv7 = grv7;
    
}

@end
