//
//  NSString+WJURLEncode.h
//
//   __      __   _____
//  /\ \  __/\ \ /\___ \
//  \ \ \/\ \ \ \\/__/\ \
//   \ \ \ \ \ \ \  _\ \ \
//    \ \ \_/ \_\ \/\ \_\ \
//     \ `\___x___/\ \____/
//      '\/__//__/  \/___/
//
//  Created by Yunhai.Wu on 16/1/15.
//  Copyright © 2016年 WJ. All rights reserved.
//

#import <Foundation/Foundation.h>


#define WJ_STRING_URL_ENCODE(content)       [NSString wj_urlEncode:content]
#define WJ_STRING_URL_DECODE(content)       [NSString wj_urlDecode:content]

/**
 *  URL Encode
 */
@interface NSString (WJURLEncode)

/**
 *  Encode
 *
 *  @param content  内容
 *  @param encoding 编码格式
 */
+(NSString*) wj_urlEncode:(NSString*) content encoding:(NSStringEncoding) encoding;

/**
 *  Encode（默认UTF8编码格式）
 */
+(NSString*) wj_urlEncode:(NSString*) content;

/**
 *  Decode
 *
 *  @param content  内容
 *  @param encoding 编码格式
 */
+(NSString*) wj_urlDecode:(NSString*) content encoding:(NSStringEncoding) encoding;

/**
 *  Decode（默认UTF8编码格式）
 */
+(NSString*) wj_urlDecode:(NSString*) content;


@end
