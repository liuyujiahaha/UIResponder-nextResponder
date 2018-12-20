//
//  SubView.m
//  NextResponderDemo
//
//  Created by liuyujia on 2018/12/20.
//  Copyright © 2018 liuyujia. All rights reserved.
//

#import "SubView.h"

@implementation SubView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 5, 50, 50)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(testBtn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    
    return self;
}

-(void)testBtn{
    /**
     调用下一个响应者的-(void)routerEventName:(NSString *)eventName userInfo:(NSDictionary *)userInfo方法
     */
    [self.nextResponder routerEventName:@"btnAction" userInfo:@{@"btnKey":@"btnvalue"}];
    
}

@end
