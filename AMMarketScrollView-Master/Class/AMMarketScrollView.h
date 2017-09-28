//
//  AMMarketScrollView.h
//  Loan
//
//  Created by AndyMu on 2017/9/26.
//  Copyright © 2017年 2345. All rights reserved.
//

/*
 滚动模式为:
 ①若文言过长，则左右滚动 ②若数据多个，则上下滚动
*/



#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, AMMarketScrollViewStyle){
    AMMarketScrollViewStyleDefault = 0,         //默认模式(文言)
    AMMarketScrollViewStyleRevolvingDoor = 1,   //走马灯模式(左侧图片+文言)
    AMMarketScrollViewStyleAnnouncement = 2,    //公告模式(左侧标签+文言+右侧关闭按钮)
};

@interface AMMarketConfigation : NSObject

/**
 上下滚动时间 (default 1S)
 */
@property (nonatomic, assign) NSTimeInterval animationDuration;
/**
 滚动文言颜色
 */
@property (nonatomic, strong) UIColor *textColor;
/**
 滚动文言字体
 */
@property (nonatomic, strong) UIFont *textFont;
/**
 背景颜色
 */
@property (nonatomic, strong) UIColor *backgroundColor;
/**
 左侧图片
 */
@property (nonatomic, strong) UIImage *leftImage;
/**
 右侧按钮
 */
@property (nonatomic, strong) UIButton *rightButton;
/**
  样式
 */
@property (nonatomic, assign) AMMarketScrollViewStyle preferredStyle;

+(AMMarketConfigation *)defaultConfiguration;

@end


@interface AMMarketScrollView : UIView

/**
 配置信息
 */
@property (nonatomic, strong) AMMarketConfigation *marketConfigation;

/**
 数据源
 */
@property (nonatomic, copy) NSArray <NSString *> * dataSource;

/**
 默认模式、不需要点击事件回调的适用
 */
- (void)start;

/**
 公告模式适用，右侧按钮点击关闭回调
 */
- (void)startWithCloseHandler:(nullable void(^)(NSNumber * _Nullable currentTime))closeHandler;

/**
 通用方法，文言点击回调，右侧按钮点击关闭回调
 */
- (void)startWithCloseHandler:(nullable void(^)(NSNumber * _Nullable currentTime))closeHandler clickHandler:(nullable void(^)(NSNumber * _Nullable index))clickHandler;

@end


NS_ASSUME_NONNULL_END

