//
//  MusicViewController.m
//  PlayMusic
//
//  Created by lanou3g on 15/9/21.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "MusicViewController.h"

@interface MusicViewController ()

@end

@implementation MusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:(UIBarButtonItemStyleDone) target:self action:@selector(returnAction:)];
    self.view.backgroundColor = [UIColor whiteColor];
    //布局
    [self layoutInterface];
}
-(void)returnAction:(UIBarButtonItem *)bar
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
//布局
-(void)layoutInterface
{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 64, 375, 500)];
    [self.view addSubview:scrollView];
    scrollView.backgroundColor = [UIColor redColor];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
