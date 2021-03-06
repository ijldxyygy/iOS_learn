//
//  UIBarButtonItem+Extension.m
//  meituang
//
//  Created by apple on 15/8/15.
//  Copyright (c) 2015年 wlw. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage{
   
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        // 设置图片
        [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
        // 设置尺寸
        btn.frame = CGRectMake(0, 0, 60, 50);
        return [[UIBarButtonItem alloc] initWithCustomView:btn];
    
}
@end
