//
//  Student.m
//  ProtoypePattern
//
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "Student.h"

@implementation Student

//父类的事件API重构
//复制对象后做操作
- (void)copyOperationWithObject:(Student *)object {
    //同级别不同的内存
    //object：已复制的对象
    //self：类外调用alloc指令所开辟的对象
    object.name = self.name;
    object.age  = self.age;
}

@end
