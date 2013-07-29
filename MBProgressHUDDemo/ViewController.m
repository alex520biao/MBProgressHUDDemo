//
//  ViewController.m
//  MBProgressHUDDemo
//
//  Created by alex on 13-7-29.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD+Custom.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [MBProgressHUD showOnCAViewFinishTxt:self.view labelText:@"哈哈哈！"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
