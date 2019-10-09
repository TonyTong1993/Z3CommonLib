//
//  StringUtil.h
//  XinAo
//
//  Created by jonathan ma on 18/2/2016.
//  Copyright © 2016 ECity. All rights reserved.
//

#import <Foundation/Foundation.h>

#define LocalizedString(key) NSLocalizedString(key, @"")

@interface StringUtil : NSObject

+(BOOL)isBlank:(NSString *)string;
+(BOOL)isEmpty:(NSString *)string;
+(BOOL)isString:(NSString *)str1 caselessEqualTo:(NSString *)str2;
+(BOOL)isString:(NSString *)str1 equalTo:(NSString *)str2;

/**
 *  Get a string encapsulating an NSInteger.
 *
 *  @param value
 *
 *  @return
 */
+(NSString *)fromInteger:(NSInteger)value;

/**
 *  Encode the given string with UTF-8 ecoding to use in http request. Refer to http://blog.csdn.net/kesalin/article/details/6678939
 *
 *  @param string the source string to encode
 *
 *  @return encoded string
 */
+(NSString *)encodeURLString:(NSString *)string;

/**
 *  Decode url string. Refer to http://blog.csdn.net/kesalin/article/details/6678939
 *
 *  @param string the source string to decode
 *
 *  @return decoded string
 */
+(NSString *)decodeURLString:(NSString *)string;

+(NSString *)getSafeString:(NSString *)string;
+(NSString *)getSafeStringOfKey:(NSString *)key fromDictionary:(NSDictionary *)Dictionary;

/**
 *  Trim white spaces and new lines.
 *
 *  @param string source string
 *
 *  @return new string
 */
+(NSString *)trim:(NSString *)string;
/**
 *
 *  判断两个字符串在忽略大小写的情况下是否相同，出现任何一个nil都将返回FALSE
 *  @param src
 *  @param target
 *
 *  @return
 */
+(BOOL)isStringEqualsIgnoreCase:(NSString *)src target:(NSString *)target;








/**
 *  Get value of a parameter from url string.
 *
 *  @param key   parameter name to get from url string
 *  @param query url query string
 *
 *  @return value of the parameter
 */
+(NSString *)getValueOfParameter:(NSString *)key fromURLQuery:(NSString *)query;



/**
 * Append newString to the end of source with a delimeter. <br>
 * For example, source is "Dog", newString is "Cat" and delimeter is ",", the result is "Dog,Cat"
 *
 *  @param newString string to append to the end of source
 *  @param source    source string
 *  @param delimeter delimeter
 *
 *  @return a new string
 */
+(NSString *)appendString:(NSString *)newString toString:(NSString *)source withDelimeter:(NSString *)delimeter;
+(NSString *)stringFromDictionary:(NSDictionary *)dictionary;
+(NSString *)stringFromDictionary:(NSDictionary *)dictionary removeNewLine:(BOOL)removeNewLine;
+(NSDictionary *)dictionaryFromString:(NSString *)jsonString;
+ (NSAttributedString *)warppedRequiredStyle:(NSString *)text;
@end
