//
//  DateUtil.m
//  XinAo
//
//  Created by jonathan ma on 24/2/2016.
//  Copyright © 2016 ECity. All rights reserved.
//

#import "DateUtil.h"
#import "NSDate+DateTools.h"
#import "StringUtil.h"
@implementation DateUtil

+(NSString *)formatDate:(NSDate *)date withFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];

    return [formatter stringFromDate:date];
}


+(NSDate *)dateFromStringCN:(NSString *)dateString{
    if([StringUtil isBlank:dateString]){
        return [NSDate date];
    }
    
    NSString* format = @"yyyy年MM月dd日 HH时mm分ss秒";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    NSDate *destDate= [dateFormatter dateFromString:dateString];
    return destDate;
}

+(NSDate *)dateFromStringEN:(NSString *)dateString{
    if([StringUtil isBlank:dateString]){
        return [NSDate date];
    }
    
    
    dateString = [dateString stringByReplacingOccurrencesOfString:@".0" withString:@""];
                  
    NSString* format = @"yyyy-MM-dd HH:mm:ss";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    NSDate *destDate= [dateFormatter dateFromString:dateString];
    return destDate;
}

+(NSString*)stringFromDateEN:(NSDate*)date{
    NSString* format = @"yyyy-MM-dd HH:mm:ss";
    if(date){
        return [[NSDate date] formattedDateWithFormat:format];
    }
    return @"";
}

+(NSString*)stringFromDateCN:(NSDate*)date{
     NSString* format = @"yyyy年MM月dd日 HH时mm分ss秒";
    if(date){
        return [[NSDate date] formattedDateWithFormat:format];
    }
    return @"";
}

/**
 *
 *
 *  @param date
 *
 *  @return yyyy-MM-dd日
 */
+(NSString*)stringFromDateDay:(NSDate*)date{
    NSString* format = @"yyyy-MM-dd";
    if(date){
        return [[NSDate date] formattedDateWithFormat:format];
    }
    return @"";
}

+(long)timeDiff:(NSDate*)datesrc target:(NSDate*)datetarget{
    double diff = 0;
    if(!datesrc || !datetarget){
        return diff;
    }
    NSTimeInterval dTime = [datesrc timeIntervalSinceDate:datetarget];
    diff = [[NSNumber numberWithDouble:dTime] doubleValue];
    return (long)fabs(diff);
}
@end
