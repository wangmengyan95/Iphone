//
//  DetailViewController.h
//  BlogReader
//
//  Created by 王 梦岩 on 13-10-7.
//  Copyright (c) 2013年 cmu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
