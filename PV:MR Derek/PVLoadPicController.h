//
//  PVLoadPicController.h
//  PV:MR Derek
//
//  Created by Fariz Benchaoui on 14/10/2014.
//  Copyright (c) 2014 FarizBenchaoui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PVLoadPicController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *returnButton;

@property (weak, nonatomic) IBOutlet UIButton *StickerButton;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property Boolean loadPic;
@property Boolean cancel;

@end
