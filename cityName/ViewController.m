//
//  ViewController.m
//  cityName
//
//  Created by tztddong on 16/3/29.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *nameBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeName:) name:@"1234567890" object:nil];
}


- (void)changeName:(NSNotification *)notification{

    NSDictionary *dict = notification.userInfo;
    [self.nameBtn setTitle:[dict objectForKey:@"name"] forState:UIControlStateNormal];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)click:(id)sender {
    
    FirstViewController *ctrl = [[FirstViewController alloc]init];
    [self.navigationController pushViewController:ctrl animated:YES];
}

@end
