//
//  PlayMusicData.m
//  PlayMusic
//
//  Created by lanou3g on 15/9/21.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "PlayMusicData.h"
#import "PlayMusic.h"
@class PlayMusicData;

PlayMusicData *playMusic = nil;
@implementation PlayMusicData
+(PlayMusicData *)sharePlayMusicData
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        playMusic = [[PlayMusicData alloc] init];
        [playMusic readData];
       
    });
   
    return playMusic;
}
-(void)readData
{
    playMusic.dataArr = [NSMutableArray array];
    NSURL *url = [[NSURL alloc] initWithString:@"http://project.lanou3g.com/teacher/UIAPI/MusicInfoList.plist"];
    NSMutableArray *arr = [NSMutableArray arrayWithContentsOfURL:url];
    for (NSDictionary *dic in arr) {
        PlayMusic *playMusic = [[PlayMusic alloc] init];
        [playMusic setValuesForKeysWithDictionary:dic];
        [self.dataArr addObject:playMusic];
        [playMusic release];
    }
    
}
@end
