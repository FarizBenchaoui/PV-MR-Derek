//
//  PVViewController.m
//  PV:MR Derek
//
//  Created by Fariz Benchaoui on 08/10/2014.
//  Copyright (c) 2014 FarizBenchaoui. All rights reserved.
//

#import "PVViewController.h"
#import "SWRevealViewController.h"

@interface PVViewController ()

@end

@implementation PVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"view did load");
    [_menuButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
