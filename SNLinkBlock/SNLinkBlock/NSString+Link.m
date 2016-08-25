//
//  NSString+Link.m
//  refactorEatHome
//
//  Created by Spectator on 16/8/3.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "NSString+Link.h"

@implementation NSString (Link)
+ (NSString*)dictionaryToJson:(NSDictionary *)dic

{
    
    NSError *parseError = nil;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
}

//NSJSONWritingPrettyPrinted  是有换位符的。

//如果NSJSONWritingPrettyPrinted 是nil 的话 返回的数据是没有 换位符的


@end
