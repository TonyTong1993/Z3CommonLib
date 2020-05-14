//
//  BaseViewController.m
//  OutWork
//
//  Created by ZZHT on 2018/5/23.
//  Copyright © 2018年 ZZHT. All rights reserved.
//

#import "Z3BaseViewController.h"
#import "Z3Theme.h"
#import "UIColor+Z3.h"
#import "MBProgressHUD+Z3.h"
@interface Z3BaseViewController ()

@end

@implementation Z3BaseViewController

#pragma mark - view life circle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithHex:backgroundColorHex];
    
    
}

- (void)post:(NSNotificationName)notificationName message:(id)message {
    if (message) {
      [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:@{@"message":message}];
    }else {
        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil];
    }
}

- (void)showAlert:(NSString *)title
          message:(NSString *)message
          handler:(void (^ __nullable)(UIAlertAction *action))handler {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:handler];
    [alert addAction:cancel];
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (void)showToast:(NSString *)message {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.text = message;
    [hud hideAnimated:YES afterDelay:1.0];
}

-(BOOL)shouldAutorotate
{
    return NO;
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED < __IPHONE_9_0
- (NSUInteger)supportedInterfaceOrientations
#else
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
#endif
{
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    
    return UIInterfaceOrientationPortrait;
}



@end
