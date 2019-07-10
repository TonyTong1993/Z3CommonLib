//
//  Z3UIPopupContainerView.h
//  Z3CommonLib_Example
//
//  Created by 童万华 on 2019/6/29.
//  Copyright © 2019 TonyTong1993. All rights reserved.
//
/*
 *学习QMUI组件：QMUIPopupContainerView
 *目的：统一PopupView
 **/
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Z3UIPopupContainerView : UIControl {
    CAShapeLayer *_backgroundLayer;
    CGFloat _arrowMinX;
}

@property (nonatomic,assign) BOOL debug;
    /// 在浮层显示时，点击空白地方是否要自动隐藏浮层，仅在用方法 2 显示时有效。
    /// 默认为 NO，也即需要手动调用代码去隐藏浮层。
@property (nonatomic,assign) BOOL automaticallyHidesWhenUserTap;

    /// 所有subview都应该添加到contentView上，默认contentView.userInteractionEnabled = NO，需要事件操作时自行打开
@property(nonatomic, strong, readonly) UIView *contentView;

    /// 预提供的UIImageView，默认为nil，调用到的时候才初始化
@property(nonatomic, strong, readonly) UIImageView *imageView;

    /// 预提供的UILabel，默认为nil，调用到的时候才初始化。默认支持多行。
@property(nonatomic, strong, readonly) UILabel *textLabel;

    /// 圆角矩形气泡内的padding（不包括三角箭头），默认是(8, 8, 8, 8)
@property(nonatomic, assign) UIEdgeInsets contentEdgeInsets UI_APPEARANCE_SELECTOR;

    /// 调整imageView的位置，默认为UIEdgeInsetsZero。top/left正值表示往下/右方偏移，bottom/right仅在对应位置存在下一个子View时生效（例如只有同时存在imageView和textLabel时，imageEdgeInsets.right才会生效）。
@property(nonatomic, assign) UIEdgeInsets imageEdgeInsets UI_APPEARANCE_SELECTOR;

    /// 调整textLabel的位置，默认为UIEdgeInsetsZero。top/left/bottom/right的作用同<i>imageEdgeInsets</i>
@property(nonatomic, assign) UIEdgeInsets textEdgeInsets UI_APPEARANCE_SELECTOR;

    /// 三角箭头的大小，默认为 CGSizeMake(18, 9)
@property(nonatomic, assign) CGSize arrowSize UI_APPEARANCE_SELECTOR;

    /// 最大宽度（指整个控件的宽度，而不是contentView部分），默认为CGFLOAT_MAX
@property(nonatomic, assign) CGFloat maximumWidth UI_APPEARANCE_SELECTOR;

    /// 最小宽度（指整个控件的宽度，而不是contentView部分），默认为0
@property(nonatomic, assign) CGFloat minimumWidth UI_APPEARANCE_SELECTOR;

    /// 最大高度（指整个控件的高度，而不是contentView部分），默认为CGFLOAT_MAX
@property(nonatomic, assign) CGFloat maximumHeight UI_APPEARANCE_SELECTOR;

    /// 最小高度（指整个控件的高度，而不是contentView部分），默认为0
@property(nonatomic, assign) CGFloat minimumHeight UI_APPEARANCE_SELECTOR;


@end

NS_ASSUME_NONNULL_END
