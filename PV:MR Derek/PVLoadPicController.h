//
//  PVLoadPicController.h
//  PV:MR Derek
//
//  Created by Fariz Benchaoui on 14/10/2014.
//  Copyright (c) 2014 FarizBenchaoui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PVLoadPicController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *stickerButton;
@property Boolean loadPic;


@end
