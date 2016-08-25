//
//  NSMutableArray+Link.m
//  refactorEatHome
//
//  Created by Spectator on 16/8/25.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "NSMutableArray+Link.h"

@implementation NSMutableArray (Link)

- (void)sn_addObjectsFromArray:(NSArray *)array {
    
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj != nil) {
        [self addObject:obj];
        }
    }];
}

@end
