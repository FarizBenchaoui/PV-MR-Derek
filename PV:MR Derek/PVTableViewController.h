//
//  PVTableViewController.h
//  PV:MR Derek
//
//  Created by Fariz Benchaoui on 14/10/2014.
//  Copyright (c) 2014 FarizBenchaoui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PVTableViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property NSMutableArray* menuArray;
@end
