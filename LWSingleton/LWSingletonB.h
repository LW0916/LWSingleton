//
//  LWSingletonB.h
//  LWSingleton
//
//  Created by lwmini on 2018/12/10.
//  Copyright © 2018年 lw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWSingletonB : NSObject
+ (instancetype) alloc __attribute__((unavailable("call sharedInstance instead")));
+ (instancetype) new __attribute__((unavailable("call sharedInstance instead")));
- (instancetype) copy __attribute__((unavailable("call sharedInstance instead")));
- (instancetype) mutableCopy __attribute__((unavailable("call sharedInstance instead")));
+ (LWSingletonB *)sharedInstance;

@end
