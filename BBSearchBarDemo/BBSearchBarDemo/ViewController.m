//
//  ViewController.m
//  BBSearchBarDemo
//
//  Created by yunlongMac on 2017/9/29.
//  Copyright © 2017年 yunlongMac. All rights reserved.
//

#import "ViewController.h"
//#import <BBSearchBar/BBSearchBar.h>
@interface ViewController ()<UISearchBarDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    BBSearchBar *searchBar = [[BBSearchBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 44)];
//    searchBar.delegate = self;
//    [searchBar setCancelButtonTitle:@"取消1"];
//    [self.view addSubview:searchBar];
    
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
