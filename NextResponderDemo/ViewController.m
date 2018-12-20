//
//  ViewController.m
//  NextResponderDemo
//
//  Created by liuyujia on 2018/12/20.
//  Copyright © 2018 liuyujia. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()
<
    UITableViewDelegate,
    UITableViewDataSource
>
@property (nonatomic, strong) UITableView *mainTab;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self.view addSubview:self.mainTab];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"CustomTableViewCell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[CustomTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}


-(UITableView *)mainTab{
    if (!_mainTab) {
        _mainTab = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTab.delegate = self;
        _mainTab.dataSource = self;
    }
    return _mainTab;
}

-(void)routerEventName:(NSString *)eventName userInfo:(NSDictionary *)userInfo{
    ///此处可以接收到子控件传过来的事件
    ///从子控件向父控件传递的消息
    ///可以根据eventName来进行不同的响应
    if ([eventName isEqualToString:@"btnAction"]) {
        ///点击cell子控件上的按钮的响应
    }else if ([eventName isEqualToString:@"cellAction"]){
        ///点击cell上面按钮的响应
    }
    
    
}

@end
