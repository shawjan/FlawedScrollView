//
//  TableViewCell.h
//  FlawedScrollView
//
//  Created by wxyz on 15/11/20.
//  Copyright © 2015年 wxyz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

- (void)setImageURL:(NSURL *)imageURL;
- (void)setAuthorAvatarURL:(NSURL *)avatarURL;
- (void)setTitle:(NSString *)title;
- (void)setScore:(float)score;
- (void)setDetail:(NSString *)detail;

@property (strong, nonatomic, readonly) UIButton *shareButton;
@property (strong, nonatomic, readonly) UIButton *joinButton;

@end
