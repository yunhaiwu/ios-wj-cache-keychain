//
//  NSString+WJURLEncode.m
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

#import "NSString+WJURLEncode.h"

@implementation NSString (WJURLEncode)


+(NSString*) wj_urlEncode:(NSString*) content encoding:(NSStringEncoding) encoding {
    NSString *result = content;
    static CFStringRef leaveAlone = CFSTR(" ");
    static CFStringRef toEscape = CFSTR("\n\r:/=,!$&'()*+;[]@#?%");
    CFStringRef escapedStr = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)content, leaveAlone,
                                                                     toEscape, (CFStringEncoding)encoding);
    if (escapedStr) {
        NSMutableString *mutable = [NSMutableString stringWithString:(__bridge NSString *)escapedStr];
        CFRelease(escapedStr);
        [mutable replaceOccurrencesOfString:@" " withString:@"+" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [mutable length])];
        result = mutable;
    }
    return result;
}

+(NSString *)wj_urlEncode:(NSString *)content {
    return [self wj_urlEncode:content encoding:NSUTF8StringEncoding];
}


+(NSString*) wj_urlDecode:(NSString*) content encoding:(NSStringEncoding) encoding {
    NSString *deplussed = [content stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    return [deplussed stringByReplacingPercentEscapesUsingEncoding:encoding];
}

+(NSString *)wj_urlDecode:(NSString *)content {
    return [self wj_urlDecode:content encoding:NSUTF8StringEncoding];
}

@end
