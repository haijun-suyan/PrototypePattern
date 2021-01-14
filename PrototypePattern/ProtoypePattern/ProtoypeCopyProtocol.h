//  原型ProtoypeCopyProtocol自定义拷贝协议
//  ProtoypeCopyProtocol.h
//  ProtoypePattern
//
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2017年 haijunyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProtoypeCopyProtocol <NSObject>

@required

/**
 *  对象的复制
 *
 *  @return 返回一个拷贝样本
 */
- (id)clone;

@end
