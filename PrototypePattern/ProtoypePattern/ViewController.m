//
//  ViewController.m
//  ProtoypePattern
//
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "ViewController.h"
#import "StudentModel.h"
#import "ClassModel.h"
#import "Student.h"

@interface ViewController ()
@property (nonatomic, strong) NSString *strongString;
@property (nonatomic, copy) NSString *copiedString;


@property (nonatomic, strong) NSMutableString *strongMutableString;
@property (nonatomic, copy) NSMutableString *copiedMutableString;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self testProtoypeCopyProtocol];
//    [self testNSCopying];
    [self ssssss];
    
}

//为了方便演示，代码中有两个student的model
//遵循<NSObject>对象协议(常规读写)
- (void)testProtoypeCopyProtocol {
    // 学生1
    StudentModel *stu1 = [[StudentModel alloc] init];
    stu1.name          = @"小王";
    stu1.age           = @(19);
    stu1.address       = @"中关村";
    stu1.totalScore    = @(100);
    
    // 学生2
    StudentModel *stu2 = [stu1 clone];
    stu2.name          = @"小红";
    NSLog(@"%@", stu2.name);

}

//遵循NSCopying拷贝协议
- (void)testNSCopying {
    Student *stu1 = [[Student alloc] init];
    stu1.name          = @"小明";
    
    Student *stu2 = stu1.copy;
    
    ClassModel *class1 = [[ClassModel alloc] init];
    class1.className   = @"班级1";
    class1.students    = @[stu1, stu2];
    
    ClassModel *class2 = class1.copy;
    NSLog(@"%@ %@", class1, class2);
    
    NSLog(@"%@", class1.students);
    NSLog(@"%@", class2.students);
}

- (void)ssssss {
//    NSString *string = [NSString stringWithFormat:@"hello string, hello world!"];
//     self.strongString = string;
//     self.copiedString = string;
//     NSLog(@"%p %@", string,string);
//     NSLog(@"%p %@", self.strongString,self.strongString);
//     NSLog(@"%p %@", self.copiedString,self.copiedString);
    //具体赋予(浅)
    NSMutableString *mutableString = [[NSMutableString alloc] initWithFormat:@"hello mutableString, hello world!"];
    //成员赋予
    self.strongMutableString = mutableString;

    self.copiedMutableString = mutableString;//深层次(独立内存不受影响)

    NSLog(@"%p %@", mutableString,mutableString);
    NSLog(@"%p %@", self.strongMutableString,self.strongMutableString);
    NSLog(@"%p %@", self.copiedMutableString,self.copiedMutableString);

    [mutableString replaceOccurrencesOfString:@", hello world!" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mutableString.length)];
    NSLog(@"%p %@", mutableString,mutableString);
    NSLog(@"%p %@", self.strongMutableString,self.strongMutableString);
    NSLog(@"%p %@", self.copiedMutableString,self.copiedMutableString);
}



@end
