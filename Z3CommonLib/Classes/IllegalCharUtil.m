//
//  IllegalCharUtil.m
//  OutWork
//
//  Created by ZZHT on 2019/5/23.
//  Copyright © 2019年 ZZHT. All rights reserved.
//

#import "IllegalCharUtil.h"

@implementation IllegalCharUtil
static NSArray *illegalChars;
+ (void)initialize {
   illegalChars = @[@'`',@'~'];
}

+ (BOOL)isIllegalChar:(NSString *)mchar {
    return [illegalChars containsObject:mchar];
}


@end
