//
//  PlayMusicCell.m
//  PlayMusic
//
//  Created by lanou3g on 15/9/21.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "PlayMusicCell.h"

@implementation PlayMusicCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_MusicName release];
    [_Name release];
    [_MusicPic release];
    [super dealloc];
}
@end
