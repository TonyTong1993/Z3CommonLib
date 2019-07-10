//
//  Z3PopupContainerView.m
//  Z3CommonLib_Example
//
//  Created by 童万华 on 2019/6/29.
//  Copyright © 2019 TonyTong1993. All rights reserved.
//

#import "Z3UIPopupContainerView.h"
@interface Z3UIPopupContainerViewWindow : UIWindow

@end

@interface Z3UIPopContainerViewController : UIViewController

@end

@interface Z3UIPopContainerMaskControl : UIControl

@property(nonatomic, weak) Z3UIPopupContainerView *popupContainerView;
@end

@interface Z3UIPopupContainerView (UIAppearance)

- (void)updateAppearance;
@end
@interface Z3UIPopupContainerView(){
    UIImageView                     *_imageView;
    UILabel                         *_textLabel;
}

@property(nonatomic, strong) Z3UIPopupContainerViewWindow *popupWindow;
@property(nonatomic, weak) UIWindow *previousKeyWindow;
@property(nonatomic, assign) BOOL hidesByUserTap;

@end
@implementation Z3UIPopupContainerView
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        
    }
    return self;
}

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
        _imageView.contentMode = UIViewContentModeCenter;
        [self.contentView addSubview:_imageView];
    }
    return _imageView;
}

- (UILabel *)textLabel {
    if (!_textLabel) {
        _textLabel = [[UILabel alloc] init];
        
        _textLabel.numberOfLines = 0;
        [self.contentView addSubview:_textLabel];
    }
    return _textLabel;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *result = [super hitTest:point withEvent:event];
    if (result == self.contentView) {
        return self;
    }
    return result;
}



@end
