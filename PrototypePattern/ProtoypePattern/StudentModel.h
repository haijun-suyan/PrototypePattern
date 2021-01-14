//  某个特定对象类
//  StudentModel.h
//  ProtoypePattern
//
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "BaseCustomCopyObject.h"

@interface StudentModel : BaseCustomCopyObject

@property (nonatomic, copy) NSString  *address;

@end
