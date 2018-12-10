//
//  LWSingletonA.m
//  LWSingletonA
//
//  Created by lwmini on 2018/12/10.
//  Copyright © 2018年 lw. All rights reserved.
//

#import "LWSingletonA.h"

@implementation LWSingletonA
+(id)allocWithZone:(NSZone *)zone{
    return [LWSingletonA sharedInstance];
}
+(LWSingletonA *)sharedInstance{
    static LWSingletonA * s_instance_lw_singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_instance_lw_singleton = [[super allocWithZone:nil] init];
    });
    return s_instance_lw_singleton;
}
-(id)copyWithZone:(NSZone *)zone{
    return [LWSingletonA sharedInstance];
}
-(id)mutableCopyWithZone:(NSZone *)zone{
    return [LWSingletonA sharedInstance];
}
@end
