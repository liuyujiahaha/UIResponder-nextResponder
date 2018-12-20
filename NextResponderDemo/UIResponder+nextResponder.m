//
//  UIResponder+nextResponder.m
//  NextResponderDemo
//
//  Created by liuyujia on 2018/12/20.
//  Copyright © 2018 liuyujia. All rights reserved.
//

#import "UIResponder+nextResponder.h"

@implementation UIResponder (nextResponder)


-(void)routerEventName:(NSString *)eventName userInfo:(NSDictionary *)userInfo{
    [[self nextResponder]routerEventName:eventName userInfo:userInfo];
}
@end
