//  某类即为自己领导类同时也为自己助理类
//  .h头文件中定义声明事件API等效于协议文件中定义声明协议事件API
//  BaseCustomCopyObject.h
//  ProtoypePattern
//
//  Created by haijunyan on 2021/1/14.
//  Copyright © 2021 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtoypeCopyProtocol.h"


@interface BaseCustomCopyObject : NSObject<ProtoypeCopyProtocol>

///**
// *  子级类中不需要重载(重构协议事件本身实例)
// *  对象的复制(协议事件API)
// *
// *  @return  已复制对象/拷贝样本
// */
//- (id)clone;

/**
 事件API由子类重构实例实现
 @param object 默认系统域结构实例中新开辟实例内存(复制特性(同级别不同的内存(同级别不同的实例)))
 */
- (void)cloneOperationWithObject:(id)object;
@end

