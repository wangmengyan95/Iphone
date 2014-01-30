//
//  ViewController.h
//  CrystallBall
//
//  Created by 王 梦岩 on 13-10-6.
//  Copyright (c) 2013年 cmu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
}
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictionArray;
@property (strong, nonatomic) UIImageView *imageView;
- (void) makePrediction;
@end

