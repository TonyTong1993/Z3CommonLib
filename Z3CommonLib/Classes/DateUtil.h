//
//  DateUtil.h
//  XinAo
//
//  Created by jonathan ma on 24/2/2016.
//  Copyright © 2016 ECity. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateUtil : NSObject

/**
 *  Get date string of a given date with the given date format.
 *
 *  @param date   source date
 *  @param format date format
 *
 *  @return date string
 */
+(NSString *)formatDate:(NSDate *)date withFormat:(NSString *)format;
/**
 *  将中文格式的日期转为NSDate
 *
 *  @param dateString @"yyyy年MM月dd日 HH时mm分ss秒"
 *
 *  @return
 */
+(NSDate *)dateFromStringCN:(NSString *)dateString;
/**
 *  将英文格式的日期转为NSDate
 *
 *  @param dateString yyyy-MM-dd HH:mm:ss
 *
 *  @return
 */
+(NSDate *)dateFromStringEN:(NSString *)dateString;
/**
 *
 *
 *  @param date
 *
 *  @return yyyy-MM-dd HH:mm:ss
 */
+(NSString*)stringFromDateEN:(NSDate*)date;
/**
 *
 *
 *  @param date
 *
 *  @return @"yyyy年MM月dd日 HH时mm分ss秒"
 */
+(NSString*)stringFromDateCN:(NSDate*)date;

/**
 *
 *
 *  @param date
 *
 *  @return yyyy-MM-dd
 */
+(NSString*)stringFromDateDay:(NSDate*)date;

/**
 *  时间差计算 单位为秒
 *  返回值为正值 或者0 datesrc或 target为nil时返回值为0
 *  @param datesrc
 *  @param target
 *
 *  @return
 */
+(long)timeDiff:(NSDate*)datesrc target:(NSDate*)datetarget;

@end
