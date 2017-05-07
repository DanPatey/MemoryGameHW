//
//  ViewController.h
//  MemoryGameHW
//
//  Created by Dan Patey on 5/7/17.
//  Copyright © 2017 Dan Patey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *gameView;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

- (IBAction)resetFourAction:(id)sender;
- (IBAction)resetSixAction:(id)sender;


@end
