//
//  PVTableViewController.m
//  PV:MR Derek
//
//  Created by Fariz Benchaoui on 14/10/2014.
//  Copyright (c) 2014 FarizBenchaoui. All rights reserved.
//

#import "PVTableViewController.h"
#import "SWRevealViewController.h"

@interface PVTableViewController ()

@end

@implementation PVTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    NSLog(@"tableview loaded");
    _menuArray= [[NSMutableArray alloc]initWithObjects:@"Load Picture",@"Take Picture",@"About", nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{    
    // Return the number of rows in the section.
        return [_menuArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"  forIndexPath:indexPath];
    NSString *object = _menuArray[indexPath.row];
    cell.textLabel.text = object;
    return cell;
 
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *segue = _menuArray[indexPath.row];
    [self performSegueWithIdentifier:segue sender:nil];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"segue %@", segue.description);
    
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] ) {
        SWRevealViewControllerSegue *swSegue = (SWRevealViewControllerSegue*) segue;
        NSLog(@"swSegue decription;%@",swSegue.description);
        swSegue.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc) {
            NSLog(@"dvc decription;%@",dvc.description);
            UINavigationController* navController = (UINavigationController*)self.revealViewController.frontViewController;
            NSLog(@"navcontroller decription;%@",navController.description);
            [navController setViewControllers: @[dvc] animated: NO ];
            [self.revealViewController setFrontViewPosition: FrontViewPositionLeft animated: YES];
        };
        
    }
    
    
    
}


@end
