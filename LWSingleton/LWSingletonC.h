//
//  LWSingletonC.h
//  LWSingleton
//
//  Created by lwmini on 2018/12/10.
//  Copyright © 2018年 lw. All rights reserved.
//

#import <Foundation/Foundation.h>
#define LW_SINGLETON_DEF(_type_) + (_type_ *)sharedInstance;\
+(instancetype) alloc __attribute__((unavailable("call sharedInstance instead")));\
+(instancetype) new __attribute__((unavailable("call sharedInstance instead")));\
-(instancetype) copy __attribute__((unavailable("call sharedInstance instead")));\
-(instancetype) mutableCopy __attribute__((unavailable("call sharedInstance instead")));\

#define LW_SINGLETON_IMP(_type_) + (_type_ *)sharedInstance{\
static _type_ *theSharedInstance = nil;\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
theSharedInstance = [[super alloc] init];\
});\
return theSharedInstance;\
}
@interface LWSingletonC : NSObject

LW_SINGLETON_DEF(LWSingletonC);

@end
