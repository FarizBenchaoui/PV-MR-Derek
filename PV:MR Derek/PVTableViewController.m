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
    _menuArray= [[NSMutableArray alloc]initWithObjects:@"Load Picture",@"Take Picture",nil];
}
-(void)viewWillAppear:(BOOL)animated
{
    
    
     [self.tableView reloadData];
  
    
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
    NSString *cellIdentifier = [_menuArray objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    return cell;
}
/*- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *segue = _menuArray[indexPath.row];
    _preView =_menuArray[indexPath.row];
    [self performSegueWithIdentifier:segue sender:nil];
}*/


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([segue.identifier isEqualToString:@"Load Picture"]) {

    PVLoadPicController *loadPicView = segue.destinationViewController;

    loadPicView.loadPic = YES;
        
    }else if([segue.identifier isEqualToString:@"Take Picture"]){
   
    PVLoadPicController *loadPicView = segue.destinationViewController;
        
    loadPicView.loadPic = FALSE;
        
        }
    NSLog(@"set load pic done, exiting prepare for segue");

}


@end
