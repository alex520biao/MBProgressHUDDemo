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
    
    UIButton *finishTxtBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [finishTxtBtn setTitle:@"finishTxtBtn" forState:UIControlStateNormal];
    finishTxtBtn.titleLabel.textColor=[UIColor redColor];
    finishTxtBtn.titleLabel.textAlignment=NSTextAlignmentLeft;
    finishTxtBtn.frame=CGRectMake(10,10,120,30);
    [finishTxtBtn addTarget:self action:@selector(finishTxtBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:finishTxtBtn];
    
    UIButton *succeedTxtBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [succeedTxtBtn setTitle:@"succeedTxtBtn" forState:UIControlStateNormal];
    succeedTxtBtn.titleLabel.textColor=[UIColor redColor];
    succeedTxtBtn.titleLabel.textAlignment=NSTextAlignmentLeft;
    succeedTxtBtn.frame=CGRectMake(120+20,10,120,30);
    [succeedTxtBtn addTarget:self action:@selector(succeedTxtBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:succeedTxtBtn];

    UIButton *errorTxtBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [errorTxtBtn setTitle:@"errorTxtBtn" forState:UIControlStateNormal];
    errorTxtBtn.titleLabel.textColor=[UIColor redColor];
    errorTxtBtn.frame=CGRectMake(10,40,120,30);
    errorTxtBtn.titleLabel.textAlignment=NSTextAlignmentLeft;
    [errorTxtBtn addTarget:self action:@selector(errorTxtBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:errorTxtBtn];
    
    UIButton *warnTxtBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [warnTxtBtn setTitle:@"warnTxtBtn" forState:UIControlStateNormal];
    warnTxtBtn.titleLabel.textColor=[UIColor redColor];
    warnTxtBtn.frame=CGRectMake(120+20,40,120,30);
    warnTxtBtn.titleLabel.textAlignment=NSTextAlignmentLeft;
    [warnTxtBtn addTarget:self action:@selector(warnTxtBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:warnTxtBtn];
    
    UIButton *showBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [showBtn setTitle:@"showBtn" forState:UIControlStateNormal];
    showBtn.titleLabel.textColor=[UIColor redColor];
    showBtn.frame=CGRectMake(10,70,120,30);
    showBtn.titleLabel.textAlignment=NSTextAlignmentLeft;
    [showBtn addTarget:self action:@selector(showBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showBtn];

    UIButton *dismissBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [dismissBtn setTitle:@"dismissBtn" forState:UIControlStateNormal];
    dismissBtn.titleLabel.textColor=[UIColor redColor];
    dismissBtn.frame=CGRectMake(120+20,70,120,30);
    dismissBtn.titleLabel.textAlignment=NSTextAlignmentLeft;
    [dismissBtn addTarget:self action:@selector(dismissBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dismissBtn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark-控件事件处理
-(IBAction)finishTxtBtn:(id)sender{
    [MBProgressHUD showOnViewFinishTxt:self.view labelText:@"操作提示"];
}

-(IBAction)succeedTxtBtn:(id)sender{
    [MBProgressHUD showOnViewSucceedImg:self.view labelText:@"操作成功"];
}

-(IBAction)errorTxtBtn:(id)sender{
    [MBProgressHUD showOnViewErrorImg:self.view labelText:@"操作失败"];
}

-(IBAction)warnTxtBtn:(id)sender{
    [MBProgressHUD showOnViewWarnImg:self.view labelText:@"操作异常"];
}

-(IBAction)showBtn:(id)sender{
    [MBProgressHUD showOnView:self.view];
}

-(IBAction)dismissBtn:(id)sender{
    [MBProgressHUD dismissForView:self.view];
}



@end
