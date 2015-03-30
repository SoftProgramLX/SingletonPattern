//
//  LXSingleton.h
//  SingletonPattern
//
//  Created by apple on 15/3/30.
//  Copyright (c) 2015年 LX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LXSingleton : NSObject

@property (nonatomic, copy)NSString *userId;

+ (LXSingleton *)sharedLXSingleton;

@end
