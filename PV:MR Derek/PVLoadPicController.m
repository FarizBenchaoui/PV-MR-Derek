//
//  PVLoadPicController.m
//  PV:MR Derek
//
//  Created by Fariz Benchaoui on 14/10/2014.
//  Copyright (c) 2014 FarizBenchaoui. All rights reserved.
//

#import "PVLoadPicController.h"
#import "SWRevealViewController.h"

@interface PVLoadPicController ()

@end

@implementation PVLoadPicController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.modalPresentationStyle = UIModalPresentationCurrentContext;
    picker.delegate = self;
    [self presentViewController:picker animated:NO completion:nil];
    
    /****************/
   // self.navigationItem.rightBarButtonItem = _tagButton;
   // self.navigationItem.rightBarButtonItem.title = @"Tag";
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    // Do any additional setup after loading the view.
}
-(void)viewDidAppear:(BOOL)animated
{
   [super viewDidAppear:animated];
   
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
   // self.imageView.frame = CGRectMake(0, 0, image.size.width,image.size.height);
    self.imageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}



@end
