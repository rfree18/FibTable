//
//  FibTableViewController.m
//  FibTable
//
//  Created by Ross Freeman on 3/14/16.
//  Copyright © 2016 Ross Freeman. All rights reserved.
//

#import "FibTableViewController.h"

@interface FibTableViewController ()

@end

@implementation FibTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _fibGen = [[FibGenerator alloc] init];
    
    self.currentCount = 1;
    
    // Determine number of fib numbers possible by architecture
    while([self.fibGen hasNextValue:self.currentCount]) {
        self.currentCount++;
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - table view

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.currentCount;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *const cellId = @"fibCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellId];
    
    NSInteger result =[self.fibGen getResultForNumber:indexPath.row];
    
    if (result <= 0) {
        return NULL;
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)result];
    
    // Get leading char
    NSString *numVals = cell.textLabel.text;
    char leadingVal = [numVals characterAtIndex:0];
    
    // Change image as appropriate
    if (leadingVal == '1') {
        cell.imageView.image = [UIImage imageNamed:@"one"];
    }
    
    else if (leadingVal == '2') {
        cell.imageView.image = [UIImage imageNamed:@"two"];
    }
    
    else if (leadingVal == '3') {
        cell.imageView.image = [UIImage imageNamed:@"three"];
    }
    else if (leadingVal == '4') {
        cell.imageView.image = [UIImage imageNamed:@"four"];
    }
    else if (leadingVal == '5') {
        cell.imageView.image = [UIImage imageNamed:@"five"];
    }
    else if (leadingVal == '6') {
        cell.imageView.image = [UIImage imageNamed:@"six"];
    }
    else if (leadingVal == '7') {
        cell.imageView.image = [UIImage imageNamed:@"seven"];
    }
    else if (leadingVal == '8') {
        cell.imageView.image = [UIImage imageNamed:@"eight"];
    }
    else if (leadingVal == '9') {
        cell.imageView.image = [UIImage imageNamed:@"nine"];
    }
    
    return cell;
}

@end
