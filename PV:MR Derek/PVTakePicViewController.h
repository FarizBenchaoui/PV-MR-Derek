//
//  PVTakePicViewController.h
//  PV:MR Derek
//
//  Created by Fariz Benchaoui on 15/10/2014.
//  Copyright (c) 2014 FarizBenchaoui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PVTakePicViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end
