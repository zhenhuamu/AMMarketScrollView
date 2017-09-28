//
//  AMMarketScrollView.m
//  Loan
//
//  Created by AndyMu on 2017/9/26.
//  Copyright © 2017年 2345. All rights reserved.
//

#import "AMMarketScrollView.h"

#define DefaultBackgroundColor [UIColor whiteColor]

static NSTimeInterval const kDefaultAnimationDuration = 1.0;

@implementation AMMarketConfigation

+(AMMarketConfigation *)defaultConfiguration {
    AMMarketConfigation *configuration = [[AMMarketConfigation alloc]init];
    configuration.animationDuration = kDefaultAnimationDuration;
    configuration.backgroundColor = DefaultBackgroundColor;
    configuration.preferredStyle = AMMarketScrollViewStyleDefault;
    return configuration;
}

@end

@interface AMMarketScrollView()

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *leftImageView;
@property (nonatomic, strong) UILabel *leftLabel;
@property (nonatomic, strong) UIButton *rightButton;
@property (nonatomic, assign) CGFloat aWidth;
@property (nonatomic, assign) CGFloat aHeight;

@property (nonatomic, assign) NSTimeInterval animationDuration;

@end


@implementation AMMarketScrollView

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupBaseView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setupBaseView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.aWidth = CGRectGetWidth(self.frame);
    self.aHeight = CGRectGetHeight(self.frame);
    [self.scrollView setFrame:self.bounds];
}

#pragma mark - Setup UI

- (void)setupBaseView {
    self.backgroundColor = DefaultBackgroundColor;
    [self addSubview:self.scrollView];
}

- (void)setupExtendView {
    if (_marketConfigation) {
        switch (_marketConfigation.preferredStyle) {
            case AMMarketScrollViewStyleDefault:
                break;
            case AMMarketScrollViewStyleRevolvingDoor:{
                [self addSubview:self.leftImageView];
            }
                break;
            case AMMarketScrollViewStyleAnnouncement:{
                [self addSubview:self.leftLabel];
                [self addSubview:self.rightButton];
            }
                break;
            default:
                break;
        }
    }
}

- (void)setupData {
    
}

#pragma mark - Set&Get

- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc]init];
        _scrollView.backgroundColor = [UIColor clearColor];
        _scrollView.scrollEnabled = NO;
    }
    return _scrollView;
}

- (UIImageView *)leftImageView {
    if (!_leftImageView) {
        _leftImageView = [[UIImageView alloc]init];
        _leftImageView.backgroundColor = [UIColor clearColor];
    }
    return _leftImageView;
}

- (UILabel *)leftLabel {
    if (!_leftLabel) {
        _leftLabel = [[UILabel alloc]init];
        _leftLabel.backgroundColor = [UIColor clearColor];
    }
    return _leftLabel;
}

- (UIButton *)rightButton {
    if (!_rightButton) {
        _rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    }
    return _rightButton;
}

- (void)setMarketConfigation:(AMMarketConfigation *)marketConfigation {
    if (_marketConfigation != marketConfigation) {
        _marketConfigation = marketConfigation;
    }
    [self setupExtendView];
}

#pragma mark -

- (void)start {
    [self startWithCloseHandler:nil];
}

- (void)startWithCloseHandler:(nullable void(^)(NSNumber * _Nullable currentTime))closeHandler {
    [self startWithCloseHandler:closeHandler clickHandler:nil];
}

- (void)startWithCloseHandler:(nullable void(^)(NSNumber * _Nullable currentTime))closeHandler clickHandler:(nullable void(^)(NSNumber * _Nullable index))clickHandler {
    
}

@end
