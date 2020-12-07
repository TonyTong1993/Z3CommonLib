//
//  TYTheme.m
//  RCTTest
//
//  Created by 童万华 on 2017/7/7.
//  Copyright © 2017年 童万华. All rights reserved.
//
//导航栏选中字体颜色 5BB4EB 未选中颜色 black

#import "Z3Theme.h"
NSInteger const themeColorHexValue = 0x288EF0;//主题颜色 
NSString * const themeColorHex = @"#3091ED";//主题颜色
NSInteger const separatorColorHexValue = 0xC7C7CC;//间隔线
NSString * const separatorColorHex = @"#C7C7CC";
NSInteger const textTint = 0x333333;//文本默认颜色
NSString *const textTintHex = @"#333333";//文本默认颜色
NSInteger const textPrimaryTint = 0x666666;//文本二级默认颜色
NSString * const textPrimaryTintHex = @"#666666";
NSInteger const textSecondaryTint = 0x999999;//文本二级默认颜色
NSString * const textSecondary = @"#999999";//文本二级默认颜色
CGFloat const themeFontSize = 17;//主题字体大小
CGFloat const themePrimaryFontSize = 15;//一级字体大小
CGFloat const themeSecondaryFontSize = 13;//二级字体大小
NSInteger const backgroundColorHexValue = 0xf4f5f7;
NSString * const backgroundColorHex = @"#f4f5f7";
CGFloat const themeCornerRadius = 5.0f;
NSInteger const leftNavBarColorHexValue = 0x005bae;//左侧导航条颜色
NSString * const leftNavBarColorHex = @"#005bae";
@implementation Z3Theme
static NSString *themeColor;
+(NSString *)themeColorWithType:(TYThemeType)type {
    NSString *color;
    switch (type) {
        case TYThemeLight:
            color = @"#e0ffff";
            break;
            
        case TYThemeDark:
             color = @"#333333";
            break;
            
        case TYThemeBrightRed:
             color = @"#dc143c";
            break;
        case TYThemeSkyBlue:
             color = @"#87ceeb";
            break;
        case TYThemePureWhite:
            color = @"#ffffff";
            break;
    }
    themeColor = color;
    return color;
}
+(NSString *)themeColor {
    return themeColor;
}
//TODO:添加兼容字体
+(NSString *)themeFontFamilyName {
    return @"PingFang-SC-Medium";
}

@end
