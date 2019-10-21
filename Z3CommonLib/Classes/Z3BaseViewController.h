//
//  BaseViewController.h
//  OutWork
//
//  Created by ZZHT on 2018/5/23.
//  Copyright © 2018年 ZZHT. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface Z3BaseViewController : UIViewController



/**
 显示toast

 @param message 内容
 */
- (void)showToast:(NSString *)message;



/**
 显示alert
 
 @param title 标题
 @param message 内容
 */
- (void)showAlert:(NSString *)title
          message:(NSString *)message
          handler:(void (^ __nullable)(UIAlertAction *action))handler;



/**
 发送通知

 @param notificationName 通知名
 @param message 需要传递的内容
 */
- (void)post:(NSNotificationName)notificationName message:(id)message;

@end
NS_ASSUME_NONNULL_END
