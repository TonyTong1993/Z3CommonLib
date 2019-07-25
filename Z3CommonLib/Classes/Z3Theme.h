//
//  TYTheme.h
//  RCTTest
//
//  Created by 童万华 on 2017/7/7.
//  Copyright © 2017年 童万华. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSInteger const themeColorHexValue;//主题色值
extern NSString * const themeColorHex;//主题色值
extern NSInteger const separatorColorHexValue;//间隔线的色值
extern NSString * const separatorColorHex;//间隔线的色值
extern NSInteger const textTint;//文本默认颜色
extern NSString *const textTintHex ;//文本默认颜色
extern NSInteger const textPrimaryTint;//文本二级默认颜色
extern NSString * const textPrimaryTintHex ;
extern NSInteger const textSecondaryTint;//文本二级默认颜色
extern NSString * const textSecondary ;//文本二级默认颜色
extern CGFloat const themeFontSize;//主题字体大小
extern CGFloat const themePrimaryFontSize;//一级字体大小
extern CGFloat const themeSecondaryFontSize;//二级字体大小
extern NSInteger const backgroundColorHexValue;
extern NSString * const backgroundColorHex;
extern NSInteger const leftNavBarColorHexValue;
extern NSString * const leftNavBarColorHex;
extern CGFloat const themeCornerRadius;//主题圆角尺寸
extern NSInteger const leftNavBarColorHexValue;
typedef NS_ENUM(NSInteger,TYThemeType) {
    TYThemeLight = 1,//纯色
    TYThemeDark,//亮黑
    TYThemeBrightRed, //富贵红
    TYThemeSkyBlue, //天空蓝
    TYThemePureWhite //白
};

@interface Z3Theme : NSObject
//设置主题色
+(NSString *)themeColorWithType:(TYThemeType)type;
//获取主题色
+(NSString *)themeColor;

+(NSString *)themeFontFamilyName;

@end
