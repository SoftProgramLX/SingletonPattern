//
//  SynthesizeSingleton.h
//
//  Created by qianfeng on 14-7-26.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//
//

#define SYNTHESIZE_SINGLETON_FOR_CLASS(classname) \
 \
static classname *shared##classname = nil; \
 \
+ (classname *)shared##classname \
{ \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        shared##classname = [[self alloc] init]; \
    }); \
    return shared##classname; \
} \
