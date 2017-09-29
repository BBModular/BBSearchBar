//
//  BBSearchBar.h
//  BBSearchBar
//
//  Created by yunlongMac on 2017/9/29.
//  Copyright © 2017年 yunlongMac. All rights reserved.
//

#import <UIKit/UIKit.h>


//! Project version number for BBSearchBar.
FOUNDATION_EXPORT double BBSearchBarVersionNumber;

//! Project version string for BBSearchBar.
FOUNDATION_EXPORT const unsigned char BBSearchBarVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <BBSearchBar/PublicHeader.h>



@interface BBSearchBar : UISearchBar

/**
 自定义控件自带的取消按钮的文字（默认为“取消”/“Cancel”）

 @param title 自定义文字
 */
- (void)setCancelButtonTitle:(NSString *)title;

@end
