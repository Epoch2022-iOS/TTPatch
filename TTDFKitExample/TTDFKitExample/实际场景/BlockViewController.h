//
//  BlockViewController.h
//  Example
//
//  Created by tianyubing on 2019/9/7.
//  Copyright © 2019 TianyuBing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootTableViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface BlockViewController : RootTableViewController
- (void)sendMessage:(NSString *)msg;
- (void)sendMessageVC:(UIViewController *)msg;
@end

NS_ASSUME_NONNULL_END
