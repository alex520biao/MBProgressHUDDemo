//
//  MBProgressHUD+Custom.m
//  CloudAlbum
//
//  Created by alex on 13-7-29.
//  Copyright (c) 2013年 com.baidu. All rights reserved.
//

#import "MBProgressHUD+Custom.h"
@implementation MBProgressHUD (Custom)

#pragma mark 进度展示
+ (void)showOnView:(UIView *)view{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(0, 0, 0, 0);
    [MBProgressHUD showOnView:view
                         mode:MBProgressHUDModeIndeterminate
                   customView:nil
                       insets:edgeInsets
                    labelText:NSLocalizedString(@"加载中...", nil)
                    hideDelay:0];
}

+ (void)showOnView:(UIView *)view labelText:(NSString*)labelText{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(0, 0, 0, 0);
    [MBProgressHUD showOnView:view
                         mode:MBProgressHUDModeIndeterminate
                   customView:nil
                       insets:edgeInsets
                    labelText:labelText
                    hideDelay:0];
}


#pragma mark 结果展示
+ (void)showOnViewFinishTxt:(UIView *)view  labelText:(NSString*)labelText{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(0, 0, 0, 0);
    UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"common_no_success_prompt_box_exclamation_mark@2x"]] autorelease];
    customView.frame=CGRectMake(0, 0, 37, 37);
    [MBProgressHUD showOnView:view
                         mode:MBProgressHUDModeText
                   customView:customView
                       insets:edgeInsets
                    labelText:labelText
                    hideDelay:1.5f];
}

+ (void)showOnViewSucceedImg:(UIView *)view  labelText:(NSString*)labelText{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(0, 0, 0, 0);
    UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-success"]] autorelease];
    customView.frame=CGRectMake(0, 0, 37, 37);
    [MBProgressHUD showOnView:view
                         mode:MBProgressHUDModeCustomView
                   customView:customView
                       insets:edgeInsets
                    labelText:labelText
                    hideDelay:1.5f];
}

+ (void)showOnViewErrorImg:(UIView *)view  labelText:(NSString*)labelText{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(0, 0, 0, 0);
    UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-error"]] autorelease];
    customView.frame=CGRectMake(0, 0, 37, 37);
    [MBProgressHUD showOnView:view
                         mode:MBProgressHUDModeCustomView
                   customView:customView
                       insets:edgeInsets
                    labelText:labelText
                    hideDelay:1.5f];
}

/*
 * 展示警告icon及文本结果，1.5s后自动消失
 */
+ (void)showOnViewWarnImg:(UIView *)view  labelText:(NSString*)labelText{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(0, 0, 0, 0);
    UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"common_no_success_prompt_box_exclamation_mark"]] autorelease];
    customView.frame=CGRectMake(0, 0, 37, 37);
    [MBProgressHUD showOnView:view
                         mode:MBProgressHUDModeCustomView
                   customView:customView
                       insets:edgeInsets
                    labelText:labelText
                    hideDelay:1.5f];
}

#pragma mark normal
+ (void)showOnView:(UIView *)view mode:(MBProgressHUDMode)mode customView:(UIView*)customView insets:(UIEdgeInsets)edgeInsets  labelText:(NSString*)labelText hideDelay:(NSTimeInterval)hideDelay{
    MBProgressHUD* HUD=[MBProgressHUD HUDForView:view];
    if (HUD==nil) {
        HUD=[MBProgressHUD showHUDAddedTo:view animated:YES];
        HUD.removeFromSuperViewOnHide=YES;
        HUD.dimBackground = NO;//背景是否屏蔽用户操作
        HUD.userInteractionEnabled=NO;
    }else{
    }

    //mode和labelText
    HUD.mode=mode;
    HUD.labelText=labelText;
    HUD.margin=30;
    
    //取消当前延迟调用及所有动画
    [MBProgressHUD cancelPreviousPerformRequestsWithTarget:HUD];
    [HUD.layer removeAllAnimations];
    
    //如果HUD已经存在则显示时不使用动画
    [HUD show:NO];


    //customView不为nil则优先使用customView
    if (mode==MBProgressHUDModeCustomView&&customView) {
        HUD.customView=customView;
    }else{
        HUD.customView=nil;
    }
    
    //根据edgeInsets重新设置HUD的frame以及调整子视图布局及重绘
    CGRect newFrame=UIEdgeInsetsInsetRect(view.bounds, edgeInsets);
    HUD.frame=newFrame;
    [HUD setNeedsLayout];
    [HUD setNeedsDisplay];

    //hideDelay>0时表示提示信息自动隐藏
    if (hideDelay>0) {
        //隐藏时不能使用动画
        [HUD hide:NO afterDelay:hideDelay];
    }
}

+ (void)dismissForView:(UIView *)view{
    [MBProgressHUD hideAllHUDsForView:view animated:YES];
}

@end
