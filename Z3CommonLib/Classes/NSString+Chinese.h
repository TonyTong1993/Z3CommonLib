//
//  NSString+Chinese.h
//  OutWork
//
//  Created by ZZHT on 2019/1/5.
//  Copyright © 2019年 ZZHT. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Chinese)
- (BOOL)isChinese;//判断是否是纯汉字

- (BOOL)includeChinese;//判断是否含有汉字
@end

NS_ASSUME_NONNULL_END
