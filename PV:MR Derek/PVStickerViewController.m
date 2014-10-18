//
//  PVStickerViewController.m
//  PV:MR Derek
//
//  Created by Fariz Benchaoui on 18/10/2014.
//  Copyright (c) 2014 FarizBenchaoui. All rights reserved.
//

#import "PVStickerViewController.h"
#import "PVStickers.h"

@interface PVStickerViewController (){
    NSMutableArray *collectionImages;
}

@end

@implementation PVStickerViewController

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
    collectionImages =[[NSMutableArray alloc]init];
    for (int i = 1 ; i<= 36; i++) {
        NSString *x = [NSString stringWithFormat:@"%d.png",i];
        NSLog(@"x =%@",x);
        [collectionImages addObject:x];
    }
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PVStickers *sticker = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    [[sticker cell]setImage:[UIImage imageNamed:[collectionImages objectAtIndex:indexPath.item]]];
    return sticker;
    
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [collectionImages count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
