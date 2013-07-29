//
//  MBProgressHUD+Custom.m
//  CloudAlbum
//
//  Created by alex on 13-7-29.
//  Copyright (c) 2013年 com.baidu. All rights reserved.
//

#import "MBProgressHUD+Custom.h"
@implementation MBProgressHUD (Custom)

#pragma mark 百度相册定制
+ (void)showOnCAView:(UIView *)view{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(44, 0, 0, 0);
    [MBProgressHUD showOnView:view
                         mode:MBProgressHUDModeIndeterminate
                   customView:nil
                       insets:edgeInsets
                    labelText:NSLocalizedString(@"public_pending", nil)
                    hideDelay:0];
}

+ (void)showOnCAView:(UIView *)view labelText:(NSString*)labelText{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(44, 0, 0, 0);
    [MBProgressHUD showOnView:view
                         mode:MBProgressHUDModeIndeterminate
                   customView:nil
                       insets:edgeInsets
                    labelText:labelText
                    hideDelay:0];
}

+ (void)showOnCAViewFinishTxt:(UIView *)view  labelText:(NSString*)labelText{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(44, 0, 0, 0);
    UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-Checkmark"]] autorelease];
    [MBProgressHUD showOnView:view
                         mode:MBProgressHUDModeText
                   customView:customView
                       insets:edgeInsets
                    labelText:labelText
                    hideDelay:1.5f];
}

+ (void)showOnCAViewSucceedImg:(UIView *)view  labelText:(NSString*)labelText{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(44, 0, 0, 0);
    UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-Checkmark"]] autorelease];
    [MBProgressHUD showOnView:view
                         mode:MBProgressHUDModeCustomView
                   customView:customView
                       insets:edgeInsets
                    labelText:labelText
                    hideDelay:1.5f];
}

+ (void)showOnCAViewErrorImg:(UIView *)view  labelText:(NSString*)labelText{
    UIEdgeInsets edgeInsets=UIEdgeInsetsMake(44, 0, 0, 0);
    UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-error"]] autorelease];
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
        HUD=[MBProgressHUD showHUDAddedTo:view animated:NO];
    }
    //mode和labelText
    HUD.mode=mode;
    HUD.labelText=labelText;
    //UIEdgeInsets
    CGRect frame=HUD.frame;
    frame.size.height=frame.size.height-edgeInsets.top;
    frame.origin.y=edgeInsets.top;
    HUD.frame=frame;
    //customView不为nil则优先使用customView
    if (mode==MBProgressHUDModeCustomView&&customView) {
        HUD.customView=customView;
    }
    
    //hideDelay>0时表示提示信息自动隐藏
    if (hideDelay>0) {
        [HUD hide:NO afterDelay:hideDelay];
    }
}

+ (void)dismissForView:(UIView *)view{
    [MBProgressHUD hideAllHUDsForView:view animated:YES];
}

//+ (void)showOnView:(UIView *)view{
//    [MBProgressHUD showHUDAddedTo:view animated:YES];
//    //mode:默认为MBProgressHUDModeIndeterminate
//    //animated默认为yes
//    //text默认为nil
//}
//
//+ (void)showOnView:(UIView *)view txt:(NSString*)text{
//    MBProgressHUD* HUD=[MBProgressHUD showHUDAddedTo:view animated:YES];
//    HUD.labelText=text;
//    //mode:默认为MBProgressHUDModeIndeterminate
//    //animated默认为yes
//}
//
//+ (void)showOnView:(UIView *)view succeedOrErrorImg:(BOOL)succeedOrErrorImg txt:(NSString*)text{
//    MBProgressHUD* HUD=[MBProgressHUD showHUDAddedTo:view animated:NO];
//    HUD.labelText=text;
//    //mode:默认为MBProgressHUDModeIndeterminate
//    //animated默认为yes
//    
//    if (succeedOrErrorImg) {
//        UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-Checkmark"]] autorelease];
//        [MBProgressHUD dismissForView:view txt:text customView:customView animated:NO afterDelay:2.0f];
//    }else{
//        UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-error"]] autorelease];
//        [MBProgressHUD dismissForView:view txt:text customView:customView animated:NO afterDelay:2.0f];
//    }
//}
//
////[[SVProgressHUD sharedView] dismissWithStatus:errorString error:YES afterDelay:seconds];
//
//+ (void)dismissForView:(UIView *)view{
//    [MBProgressHUD hideAllHUDsForView:view animated:YES];
//}
//
//+ (void)dismissForView:(UIView *)view succeedOrErrorImg:(BOOL)succeedOrErrorImg txt:(NSString*)text {
//    if (succeedOrErrorImg) {
//        UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-Checkmark"]] autorelease];
//        [MBProgressHUD dismissForView:view txt:text customView:customView animated:YES afterDelay:1.0f];
//    }else{
//        UIImageView *customView=[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-error"]] autorelease];
//        [MBProgressHUD dismissForView:view txt:text customView:customView animated:YES afterDelay:1.0f];
//    }
//}
//
//
////隐藏提示框:自定义图片/文本/动画/延迟时间
//+ (void)dismissForView:(UIView *)view txt:(NSString*)text  customView:(UIImageView*)imgView animated:(BOOL)animated afterDelay:(NSTimeInterval)seconds {
//    MBProgressHUD* HUD=[MBProgressHUD HUDForView:view];
//    
//    //    /* alex */
//    //    if (seconds>0) {
//    //        if (HUD==nil) {
//    //            HUD=[MBProgressHUD showHUDAddedTo:view animated:YES];
//    //        }
//    //    }
//    
//    HUD.customView =imgView;
//	HUD.mode = MBProgressHUDModeCustomView;
//	HUD.labelText = text;
//    [HUD hide:animated afterDelay:seconds];
//}
@end
