//
//  BBSearchBar.m
//  BBSearchBar
//
//  Created by yunlongMac on 2017/9/29.
//  Copyright © 2017年 yunlongMac. All rights reserved.
//

#import "BBSearchBar.h"

@implementation BBSearchBar

- (instancetype)init{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self _createSearchBar];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self _createSearchBar];
    }
    
    return self;
}

- (void)_createSearchBar{
    self.accessibilityIdentifier = @"searchbar";
    
    for (UIView *subView in self.subviews) {
        if ([subView isKindOfClass:NSClassFromString(@"UISearchBarBackground")]) {
            [subView removeFromSuperview];
        }
        
        if ([subView isKindOfClass:NSClassFromString(@"UISearchBarTextField")]) {
            UITextField *textField = (UITextField *)subView;
            [textField setBorderStyle:UITextBorderStyleNone];
            textField.background = nil;
            textField.frame = CGRectMake(8, 8, self.bounds.size.width - 2* 8,
                                         self.bounds.size.height - 2* 8);
            textField.layer.cornerRadius = 6;
            
            textField.clipsToBounds = YES;
            textField.backgroundColor = [UIColor whiteColor];
        }
    }
}


#pragma mark - 自定义控件自带的取消按钮的文字（默认为“取消”/“Cancel”）
- (void)setCancelButtonTitle:(NSString *)title
{
    for (UIView *searchbuttons in self.subviews)
    {
        if ([searchbuttons isKindOfClass:[UIButton class]])
        {
            UIButton *cancelButton = (UIButton*)searchbuttons;
            [cancelButton setTitle:title forState:UIControlStateNormal];
            break;
        }
    }
}

@end
