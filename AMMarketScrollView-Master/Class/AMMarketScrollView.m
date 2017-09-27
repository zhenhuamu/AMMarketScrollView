//
//  AMMarketScrollView.m
//  Loan
//
//  Created by AndyMu on 2017/9/26.
//  Copyright © 2017年 2345. All rights reserved.
//

#import "AMMarketScrollView.h"

@implementation AMMarketConfigation

+(AMMarketConfigation *)defaultConfiguration {
    AMMarketConfigation *configuration = [[AMMarketConfigation alloc]init];
    configuration.animationDuration = kDefaultAnimationDuration;
    configuration.backgroundColor = [UIColor whiteColor];
    configuration.preferredStyle = AMMarketScrollViewStyleDefault;
    return configuration;
}

@end



@implementation AMMarketScrollView

#pragma mark - Life Cycle

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

- (void)layoutSubviews {
    [super layoutSubviews];
//    _width = CGRectGetWidth(self.frame);
//    _height = CGRectGetHeight(self.frame);
//
//    [_backgroundImageView setFrame:self.bounds];
//    [_pickerView setFrame:self.bounds];
//    [self transformForPickerView];
//    [_leftView setFrame:CGRectMake(0, 0, maxWidth, _height)];
//    [_rightView setFrame:CGRectMake(_width - maxWidth, 0, maxWidth, _height)];
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
