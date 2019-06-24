//
//  MBProgressHUD+Z3.h
//  MBProgressHUD
//
//  Created by 童万华 on 2019/6/24.
//


#import "MBProgressHUD.h"

@interface MBProgressHUD (Z3)
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)showError:(NSString *)error toView:(UIView *)view;
+ (void)showSuccess:(NSString *)success toView:(UIView *)view afterDelay:(NSTimeInterval)delay;
+ (void)showError:(NSString *)error toView:(UIView *)view afterDelay:(NSTimeInterval)delay;

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;

+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;
+ (void)showSuccess:(NSString *)success afterDelay:(NSTimeInterval)delay;
+ (void)showError:(NSString *)error afterDelay:(NSTimeInterval)delay;

+ (MBProgressHUD *)showMessage:(NSString *)message;

+ (void)hideHUDForView:(UIView *)view;
+ (void)hideHUD;
@end
