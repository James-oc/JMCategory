//
//  ViewController.m
//  JMCategory
//
//  Created by james on 15/3/27.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import "ViewController.h"
//#import "UIView+JMExtension.h"
#import "UITableView+JMExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.tag = 1999;
    
    UITableView *tableview = [[UITableView alloc] initWithFrame:CGRectMake(0,
                                                                           20,
                                                                           CGRectGetWidth(self.view.frame),
                                                                           CGRectGetHeight(self.view.frame) - 20)
                                                          style:UITableViewStylePlain];
    tableview.delegate = self;
    tableview.dataSource = self;
//    tableview.ex
    [self.view addSubview:tableview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.textLabel.text = @"dddd";
    
    return cell;
}
@end
