//
//  ViewController.m
//  MemoryGameHW
//
//  Created by Dan Patey on 5/7/17.
//  Copyright © 2017 Dan Patey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {

NSArray *imgsArr;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self arrayMakeAction];
    
    CGRect testImgFrame = CGRectMake(0, 0, 150, 150);
    
    UIImageView *testImgView = [[UIImageView alloc] initWithFrame: testImgFrame];
    
    testImgView.backgroundColor = [UIColor greenColor];
    
    [_gameView addSubview: testImgView];
}

- (void) arrayMakeAction {

    imgsArr = [[NSArray alloc] initWithObjects:
               @"barbara.jpg",
               @"c37e471cbda190a9c8cce3892d3fda26.jpg",
               @"charlie_1_20160614_1804687380.jpg",
               @"ciwHbm-L.jpg",
               @"colour_blocks.png",
               @"cropped-image-17.jpg",
               @"dream-image.jpg",
               @"Image Essentials Stetson.jpg",
               @"image-3-512x512.jpg",
               @"image.jpg",
               @"Lichtenstein_img_processing_test.png",
               @"noImg.png",
               @"on_the_phone.jpg",
               @"peppers.png",
               @"Snapshot _ Roby  Coccy  IRDS 101 180 22 - Adulti.png",
               @"Snapshot _ Roby  Coccy  IRDS 123 224 22 - Adulti.png",
               @"Superdomo-la-rioja-image.jpg",
               @"texture.jpg",
               @"zaneplay_sm.jpg", nil];
}

- (IBAction)resetFourAction:(id)sender {
    
}

- (IBAction)resetSixAction:(id)sender {
    
}


@end
