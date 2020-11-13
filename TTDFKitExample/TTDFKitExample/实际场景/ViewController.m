//
//  ViewController.m
//  TTDFKit
//
//  Created by ty on 2019/5/17.
//  Copyright © 2019 TianyuBing. All rights reserved.
//

#import "ViewController.h"
//#import <SafariServices/SFSafariViewController.h>

#import <TTDFKit/TTDFKit.h>

#import "SGDirWatchdog.h"
#define guard(condfion) if(condfion){}
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *tableview;
@property(nonatomic,strong)NSMutableArray *watchDogs;
@property(nonatomic,strong)UITableViewCell *cell;
-(void)params1:(NSString*)params1 params2:(int)params2 params3:(int)params3 params4:(int)params4 params5:(int)params5 params6:(int)params6 params7:(int)params7;
@end

@implementation ViewController
- (IBAction)loadBugFixPatch:(id)sender {
    NSString *srcPath = [[NSBundle mainBundle] pathForResource:@"bugPatch" ofType:@"js"];
    NSString *jsCode = [[NSString alloc] initWithData:[[NSFileManager defaultManager] contentsAtPath:srcPath] encoding:NSUTF8StringEncoding];
    
    [[TTDFEntry shareInstance] evaluateScript:jsCode withSourceURL:[NSURL URLWithString:@"bugPatch.js"]];
    UIAlertController *_alert = [UIAlertController alertControllerWithTitle:@"" message:@"天猫首页弹框修复成功" preferredStyle:(UIAlertControllerStyleAlert)];
    [_alert addAction:[UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
           
    }]];
    
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"bugfix"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [self presentViewController:_alert animated:YES completion:nil];

    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
//    NSInteger nums = [self tableView:self.tableview numberOfRowsInSection:0];
//    UITableViewCell *cell= [self tableView:self.tableview cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
//    NSLog(@"%@",cell);
}

-(NSString *)jsFileName{
    return @"Demo.js";
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

@end
