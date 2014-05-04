//
//  MBProgressHUD+Custom.h
//  CloudAlbum
//
//  Created by alex on 13-7-29.
//  Copyright (c) 2013年 com.baidu. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Custom)

#pragma mark 进度展示
/*
 * 展示进度，默认使用MBProgressHUDModeIndeterminate及pending...文本
 */
+ (void)showOnView:(UIView *)view;

/*
 * 展示进度，默认使用MBProgressHUDModeIndeterminate，指定labelText文本
 */
+ (void)showOnView:(UIView *)view labelText:(NSString*)labelText;

#pragma mark 结果展示
/*
 * 展示文本结果，1.5s后自动消失
 */
+ (void)showOnViewFinishTxt:(UIView *)view  labelText:(NSString*)labelText;

/*
 * 展示成功icon及文本结果，1.5s后自动消失
 */
+ (void)showOnViewSucceedImg:(UIView *)view  labelText:(NSString*)labelText;

/*
 * 展示失败icon及文本结果，1.5s后自动消失
 */
+ (void)showOnViewErrorImg:(UIView *)view  labelText:(NSString*)labelText;

#pragma mark normal
/*
 *
 *MBProgressHUD默认覆盖view，edgeInsets为MBProgressHUD在view上的偏移量
 */
+ (void)showOnView:(UIView *)view
              mode:(MBProgressHUDMode)mode
        customView:(UIView*)customView
            insets:(UIEdgeInsets)edgeInsets
         labelText:(NSString*)labelText
         hideDelay:(NSTimeInterval)hideDelay;

+ (void)dismissForView:(UIView *)view;

@end
