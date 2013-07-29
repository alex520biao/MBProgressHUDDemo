//
//  MBProgressHUD+Custom.h
//  CloudAlbum
//
//  Created by alex on 13-7-29.
//  Copyright (c) 2013年 com.baidu. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Custom)
#pragma mark 百度相册定制
+ (void)showOnCAView:(UIView *)view;
+ (void)showOnCAView:(UIView *)view labelText:(NSString*)labelText;

+ (void)showOnCAViewFinishTxt:(UIView *)view  labelText:(NSString*)labelText;
+ (void)showOnCAViewSucceedImg:(UIView *)view  labelText:(NSString*)labelText;
+ (void)showOnCAViewErrorImg:(UIView *)view  labelText:(NSString*)labelText;

#pragma mark normal
+ (void)showOnView:(UIView *)view mode:(MBProgressHUDMode)mode customView:(UIView*)customView insets:(UIEdgeInsets)edgeInsets  labelText:(NSString*)labelText hideDelay:(NSTimeInterval)hideDelay;

+ (void)dismissForView:(UIView *)view;

//+ (void)showOnView:(UIView *)view;
//+ (void)showOnView:(UIView *)view txt:(NSString*)text;
//+ (void)showOnView:(UIView *)view succeedOrErrorImg:(BOOL)succeedOrErrorImg txt:(NSString*)text;
//
//+ (void)dismissForView:(UIView *)view;
//+ (void)dismissForView:(UIView *)view succeedOrErrorImg:(BOOL)succeedOrErrorImg txt:(NSString*)text;
////隐藏提示框:自定义图片/文本/动画/延迟时间
//+ (void)dismissForView:(UIView *)view txt:(NSString*)text  customView:(UIImageView*)imgView animated:(BOOL)animated afterDelay:(NSTimeInterval)seconds;
@end
