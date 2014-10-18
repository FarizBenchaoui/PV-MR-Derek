//
//  PVLoadPicController.m
//  PV:MR Derek
//
//  Created by Fariz Benchaoui on 14/10/2014.
//  Copyright (c) 2014 FarizBenchaoui. All rights reserved.
//

#import "PVLoadPicController.h"
#import "SWRevealViewController.h"
#import "PVViewController.h"

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
    [self.returnButton setHidden:YES];
    [self.StickerButton setHidden:YES];
   
}
-(void)viewDidAppear:(BOOL)animated
{
   [super viewDidAppear:animated];

    if (self.imageView.image == nil) {
        if (!self.cancel) {
            [self libOrCam];

        }
      
    }
        [self.returnButton setHidden:NO];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    

    // Dispose of any resources that can be recreated.
}



- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:NULL];
    
    self.cancel = TRUE;
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.imageView setImage:image];
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.StickerButton setHidden:NO];
    
}

-(void)libOrCam
{
    UIImagePickerController *picker;
    if (self.loadPic) {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.modalPresentationStyle = UIModalPresentationCurrentContext;
        picker.delegate = self;
    [self presentViewController:picker animated:YES completion:NULL];
    }else{
        picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                  message:@"Device has no camera"
                                                                 delegate:nil
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles: nil];
            [myAlertView show];
        }
        [self presentViewController:picker animated:YES completion:NULL];
    }
  
    
}


@end
