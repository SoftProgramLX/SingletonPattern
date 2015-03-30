//
//  LXSingleton.m
//  SingletonPattern
//
//  Created by apple on 15/3/30.
//  Copyright (c) 2015年 LX. All rights reserved.
//

#import "LXSingleton.h"
#import "SynthesizeSingleton.h"

@implementation LXSingleton

// 使用宏采用的是GCD方法定义了单例
SYNTHESIZE_SINGLETON_FOR_CLASS(LXSingleton);

/*
//不用GCD的方法，使用@synchronized
+ (BVARCSingleton *) sharedInstance
{
    static BVARCSingleton *sharedInstance = nil;
    @synchronized(self)
    {
            if (sharedInstance == nil )
            {
                sharedInstance = [[self alloc] init];
            }
    }

    return sharedInstance;
}
*/

// 当第一次使用这个单例时，会调用这个init方法。
- (id)init
{
    self = [super init];
    
    if (self) {
        // 通常在这里做一些相关的初始化任务
    }
    
    return self;
}

@end




