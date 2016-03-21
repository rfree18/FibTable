//
//  FibTableViewController.h
//  FibTable
//
//  Created by Ross Freeman on 3/14/16.
//  Copyright © 2016 Ross Freeman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SVPullToRefresh/SVPullToRefresh.h>

#import "FibGenerator.h"

@interface FibTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *fibTable;
@property (strong, nonatomic) FibGenerator *fibGen;
@property (assign, nonatomic) NSInteger currentCount;

@end
