//
//  PlayMusicTableViewController.m
//  PlayMusic
//
//  Created by lanou3g on 15/9/21.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "PlayMusicTableViewController.h"
#import "PlayMusicCell.h"
#import "PlayMusicData.h"
#import "PlayMusic.h"
#import "UIImageView+WebCache.h"
#import "MusicViewController.h"
@interface PlayMusicTableViewController ()
@property (nonatomic,retain)NSMutableArray *dataArr;//接收数据
@end

@implementation PlayMusicTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [PlayMusicData sharePlayMusicData];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //注册Cell
    [self.tableView registerNib:[UINib nibWithNibName:@"PlayMusicCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"cell"];
    //数据解析
    [self DataParsing];
    }
-(void)DataParsing
{
   self.dataArr = [NSMutableArray array];
   self.dataArr = [PlayMusicData sharePlayMusicData].dataArr;
   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.dataArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PlayMusicCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    PlayMusic *playMusic = [[PlayMusic alloc] init];
    playMusic = self.dataArr[indexPath.row];
    cell.Name.text = playMusic.artists_name;
    cell.MusicName.text =playMusic.name;
    [cell.MusicPic sd_setImageWithURL:[NSURL URLWithString:playMusic.picUrl]];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 140;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MusicViewController *music = [[MusicViewController alloc] init];
    UINavigationController *naVC = [[UINavigationController alloc] initWithRootViewController:music];
    [self presentViewController:naVC animated:YES completion:nil];
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
