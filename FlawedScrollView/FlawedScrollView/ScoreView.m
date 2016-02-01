//
//  ScoreView.m
//  FlawedScrollView
//
//  Created by wxyz on 16/1/26.
//  Copyright © 2016年 wxyz. All rights reserved.
//

#import "ScoreView.h"

@interface ScoreView ()

@property (strong, nonatomic) CAGradientLayer *gradientLayer;
@property (strong, nonatomic) CAShapeLayer *maskLayer;

@end

@implementation ScoreView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.borderWidth = 1.0;
        self.layer.borderColor = [UIColor blackColor].CGColor;
        self.layer.masksToBounds = YES;
        
        self.gradientLayer = [CAGradientLayer layer];
        self.gradientLayer.colors = @[(id)[UIColor yellowColor].CGColor, (id)[UIColor redColor].CGColor];
        self.gradientLayer.startPoint = CGPointMake(0.0, 0.5);
        self.gradientLayer.endPoint = CGPointMake(1.0, 0.5);
        [self.layer addSublayer:self.gradientLayer];
        
        self.maskLayer = [CAShapeLayer layer];
        self.maskLayer.strokeColor = nil;
        self.maskLayer.fillColor = [UIColor whiteColor].CGColor;
        self.gradientLayer.mask = self.maskLayer;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.layer.cornerRadius = CGRectGetHeight(self.bounds) / 2.0;
    self.gradientLayer.frame = self.layer.bounds;
    CGRect maskRect = CGRectMake(0.0, 0.0, CGRectGetWidth(self.layer.bounds) * self.score, CGRectGetHeight(self.layer.bounds));
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:maskRect];
    self.maskLayer.path = path.CGPath;
}

- (void)setScore:(float)score {
    _score = score;
    [self setNeedsLayout];
}

@end
