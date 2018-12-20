//
//  UIResponder+nextResponder.h
//  NextResponderDemo
//
//  Created by liuyujia on 2018/12/20.
//  Copyright © 2018 liuyujia. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIResponder (nextResponder)

-(void)routerEventName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;

@end

NS_ASSUME_NONNULL_END
