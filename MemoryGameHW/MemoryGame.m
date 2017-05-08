//  ViewController.m
//  MemoryGameHW
//  Created by Dan Patey on 5/7/17.
//  Copyright © 2017 Dan Patey. All rights reserved.

#import "MemoryGame.h"

@interface MemoryGame () {
    NSArray *imgsArr;
    float gameViewWidth;
    int gridSize;
}
@end

@implementation MemoryGame

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    [self arrayMakeAction];

    [_gameView layoutIfNeeded];
    gridSize = 4;
    gameViewWidth = _gameView.bounds.size.width;
    
    float blockWidth = gameViewWidth / gridSize;
    
    float xCen = blockWidth / 2;
    float yCen = blockWidth / 2;
    int counter = 0;
    
    for (int h = 0; h < gridSize; h++) {
        for (int v = 0; v < gridSize; v++) {
            if (counter == gridSize*gridSize/2) {
                counter = 0;
            }
            
            UIImageView *block = [[UIImageView alloc] init];
            CGRect blockFrame = CGRectMake(0, 0, blockWidth - 10, blockWidth - 10);
            block.frame = blockFrame;
            block.image = [UIImage imageNamed:[imgsArr objectAtIndex:counter]];
            block.center = CGPointMake(xCen, yCen);
            [_gameView addSubview:block];
            
            xCen = xCen + blockWidth;
            counter++;
        }
        yCen = yCen + blockWidth;
        xCen = blockWidth / 2;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
