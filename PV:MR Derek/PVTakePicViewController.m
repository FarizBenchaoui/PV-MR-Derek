//
//  PVTakePicViewController.m
//  PV:MR Derek
//
//  Created by Fariz Benchaoui on 15/10/2014.
//  Copyright (c) 2014 FarizBenchaoui. All rights reserved.
//

#import "PVTakePicViewController.h"
#import "SWRevealViewController.h"

@interface PVTakePicViewController ()

@end

@implementation PVTakePicViewController

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
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    // Do any additional setup after loading the view.
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
    self.imageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}
@end
