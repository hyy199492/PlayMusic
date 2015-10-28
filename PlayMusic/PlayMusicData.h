//
//  PlayMusicData.h
//  PlayMusic
//
//  Created by lanou3g on 15/9/21.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayMusicData : NSObject
@property (nonatomic,retain)NSMutableArray *dataArr;//存放数据的数组
+(PlayMusicData *)sharePlayMusicData;
@end
