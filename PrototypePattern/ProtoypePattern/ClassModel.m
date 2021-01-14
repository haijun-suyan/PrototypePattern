//
//  ClassModel.m
//  ProtoypePattern
//
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "ClassModel.h"

@implementation ClassModel
//父类的事件API重构
//复制对象后做操作
- (void)copyOperationWithObject:(ClassModel *)object {
    //同级别不同的内存
    //object：已复制的对象
    //self：类外调用alloc指令所开辟的对象
    object.className = self.className;
    //完成了深拷贝(完整的复制了集合里面的对象)
    //copyItems：xxx.copy(数组容器聚合体中2个元素项目的copy)
    object.students = [[NSArray alloc] initWithArray:self.students copyItems:YES];
}

@end
