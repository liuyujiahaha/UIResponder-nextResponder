//
//  CustomTableViewCell.m
//  NextResponderDemo
//
//  Created by liuyujia on 2018/12/20.
//  Copyright © 2018 liuyujia. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "SubView.h"

@implementation CustomTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(20, 20, 50, 50)];
        btn.backgroundColor = [UIColor blueColor];
        [btn addTarget:self action:@selector(testAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        
        SubView *sub = [[SubView alloc]initWithFrame:CGRectMake(100, 0, 200, 200)];
        sub.backgroundColor = [UIColor orangeColor];
        [self addSubview:sub];
    }
    return self;
}

-(void)testAction{
    /**
     调用下一个响应者的-(void)routerEventName:(NSString *)eventName userInfo:(NSDictionary *)userInfo方法
     */
    [self.nextResponder routerEventName:@"cellAction" userInfo:@{@"cellKey":@"cellValue"}];
}


@end
