//
//  TableViewCell.m
//  FlawedScrollView
//
//  Created by wxyz on 15/11/20.
//  Copyright © 2015年 wxyz. All rights reserved.
//

#import <SDWebImage/UIImageView+WebCache.h>
#import <Masonry/Masonry.h>

#import "TableViewCell.h"
#import "ScoreView.h"

@interface TableViewCell ()

@property (strong, nonatomic) UIImageView *customImageView;
@property (strong, nonatomic) UILabel *customTitleLabel;
@property (strong, nonatomic) UILabel *customDetailLabel;
@property (strong, nonatomic) ScoreView *customScoreView;

@property (strong, nonatomic) UIImageView *authorAvatarImageView;

@property (strong, nonatomic, readwrite) UIButton *shareButton;
@property (strong, nonatomic, readwrite) UIButton *joinButton;

@end

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    self.shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.shareButton setTitle:@"分享" forState:UIControlStateNormal];
    [self.shareButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.contentView addSubview:self.shareButton];
    [self.shareButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.contentView.mas_bottom);
        make.height.mas_equalTo(30);
        make.left.equalTo(self.contentView.mas_left);
        make.width.equalTo(self.contentView.mas_width).multipliedBy(0.5).offset(-0.5);
    }];
    
    UIView *buttonSeparator = [[UIView alloc] init];
    buttonSeparator.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.5];
    [self.contentView addSubview:buttonSeparator];
    [buttonSeparator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.shareButton.mas_top).offset(5);
        make.bottom.equalTo(self.shareButton.mas_bottom).offset(-5);
        make.left.equalTo(self.shareButton.mas_right);
        make.width.mas_equalTo(1);
    }];
    
    self.joinButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.joinButton setTitle:@"加入" forState:UIControlStateNormal];
    [self.joinButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.contentView addSubview:self.joinButton];
    [self.joinButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.shareButton.mas_top);
        make.bottom.equalTo(self.shareButton.mas_bottom);
        make.left.equalTo(buttonSeparator.mas_right);
        make.right.equalTo(self.contentView.mas_right);
    }];
    
    UIView *buttonTopLine = [[UIView alloc] init];
    buttonTopLine.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.5];
    [self.contentView addSubview:buttonTopLine];
    [buttonTopLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.shareButton.mas_top);
        make.height.mas_equalTo(1);
        make.left.equalTo(self.contentView.mas_left).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
    }];
    
    self.customImageView = [[UIImageView alloc] init];
    self.customImageView.contentMode = UIViewContentModeScaleAspectFit;
    self.customImageView.layer.shadowColor = [UIColor grayColor].CGColor;
    self.customImageView.layer.shadowOpacity = 1.0;
    self.customImageView.layer.shadowRadius = 2.0;
    self.customImageView.layer.shadowOffset = CGSizeMake(2.0, 2.0);
    [self.contentView addSubview:self.customImageView];
    [self.customImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(10);
        make.left.equalTo(self.contentView.mas_left).offset(10);
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.bottom.lessThanOrEqualTo(self.shareButton.mas_top).offset(-10);
        make.bottom.equalTo(self.shareButton.mas_top).offset(-10).priority(MASLayoutPriorityDefaultHigh);
    }];
    
    self.customTitleLabel = [[UILabel alloc] init];
    self.customTitleLabel.textColor = [UIColor orangeColor];
    self.customTitleLabel.font = [UIFont systemFontOfSize:16];
    [self.customTitleLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    [self.customTitleLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    [self.contentView addSubview:self.customTitleLabel];
    [self.customTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(10);
        make.left.equalTo(self.customImageView.mas_right).offset(10);
    }];
    
    self.customDetailLabel = [[UILabel alloc] init];
    self.customDetailLabel.font = [UIFont systemFontOfSize:13];
    self.customDetailLabel.numberOfLines = 0;
    [self.customDetailLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    [self.customDetailLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    [self.contentView addSubview:self.customDetailLabel];
    [self.customDetailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.customTitleLabel.mas_left);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
        make.top.equalTo(self.customTitleLabel.mas_bottom).offset(5);
        make.bottom.lessThanOrEqualTo(self.shareButton.mas_top).offset(-10).priority(MASLayoutPriorityDefaultHigh+1);
        make.bottom.equalTo(self.shareButton.mas_top).offset(-10).priority(MASLayoutPriorityDefaultHigh);
    }];
    
    self.customScoreView = [[ScoreView alloc] init];
    [self.contentView addSubview:self.customScoreView];
    [self.customScoreView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.customTitleLabel.mas_centerY);
        make.left.equalTo(self.customTitleLabel.mas_right).offset(10);
        make.size.mas_equalTo(CGSizeMake(75, 15));
    }];
    
    self.authorAvatarImageView = [[UIImageView alloc] init];
    self.authorAvatarImageView.clipsToBounds = YES;
    self.authorAvatarImageView.layer.cornerRadius = 10;
    [self.contentView addSubview:self.authorAvatarImageView];
    [self.authorAvatarImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.customImageView.mas_right);
        make.bottom.equalTo(self.customImageView.mas_bottom);
        make.size.mas_equalTo(CGSizeMake(20, 20));
    }];
}

- (void)setImageURL:(NSURL *)imageURL {
    [self.customImageView sd_setImageWithURL:imageURL];
}

- (void)setTitle:(NSString *)title {
    self.customTitleLabel.text = title;
}

- (void)setDetail:(NSString *)detail {
    self.customDetailLabel.text = detail;
}

- (void)setScore:(float)score {
    self.customScoreView.score = score;
}

- (void)setAuthorAvatarURL:(NSURL *)avatarURL {
    [self.authorAvatarImageView sd_setImageWithURL:avatarURL];
}

@end
