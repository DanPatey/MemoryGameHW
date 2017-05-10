//
//  BlockModel.m
//  MemoryGameHW
//
//  Created by Dan Patey on 5/8/17.
//  Copyright © 2017 Dan Patey. All rights reserved.
//

#import "BlockModel.h"

@implementation BlockModel

NSArray *imgsArr;

-(void) downloadImages {
    NSError *error;
    
    // Set Paths
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *filePath = [[paths objectAtIndex:0] stringByAppendingString:@"MyImageNamed.jpg"];
    NSLog(@"%@", paths);
    
    // GET json and serialize to a dictionary
    NSDictionary *dictRoot = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Keys" ofType:@"plist"]];
    NSString *userToken = [dictRoot valueForKey:@"soundCloudToken"];
    NSString *urlString = [NSString stringWithFormat:@"https://api.soundcloud.com/playlists/79670980?client_id=%@", userToken];
    NSData *data = [NSData dataWithContentsOfURL: [NSURL URLWithString:urlString]];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data
                                                options:kNilOptions
                                                error:&error];
    // Download image
    [json enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull value, BOOL * _Nonnull stop) {
//        NSLog(@"%@ %@", key, value);
        NSURL *imageURL = [NSURL URLWithString:json[@"artwork_url"]];
        NSURLSessionDownloadTask *downloadPhotoTask = [[NSURLSession sharedSession] downloadTaskWithURL:imageURL completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError *error) {
            
            UIImage *downloadedImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
            [UIImageJPEGRepresentation(downloadedImage, 1.0) writeToFile:filePath atomically:YES];
        }];
        [downloadPhotoTask resume];
    }];
}

-(NSArray *) createBlockArray {
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
    return imgsArr;
}

@end
