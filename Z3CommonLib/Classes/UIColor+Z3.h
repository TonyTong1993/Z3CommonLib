//
//  UIColor+Z3.h
//  MBProgressHUD
//
//  Created by 童万华 on 2019/6/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Z3)
+ (UIColor *)randomColor;
+ (UIColor *)randomColor:(CGFloat)alpha;
+ (UIColor *)colorWithHex:(NSString *)hexColor;
+ (UIColor *)colorWithHex:(NSString *)hexColor alpha:(float)hexAlpha;
@end

NS_ASSUME_NONNULL_END
