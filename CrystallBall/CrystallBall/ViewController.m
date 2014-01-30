//
//  ViewController.m
//  CrystallBall
//
//  Created by 王 梦岩 on 13-10-6.
//  Copyright (c) 2013年 cmu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize predictionArray;
@synthesize predictionLabel;
@synthesize imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage * image = [UIImage imageNamed:@"background_new.png"];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    self.imageView.frame =self.view.bounds;
    self.imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    
//    [self.imageView startAnimating];
//    self.imageView.animationImages = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@""], nil];
//    
//    for (int i = 0; i<)
    
    [self.view insertSubview:imageView atIndex:0];
    
    self.predictionArray = [[NSArray alloc] initWithObjects:
                       @"Orient Express",
                       @"Taiwan",
                       @"Two Slices",
                       @"LuLu Noodle",
                       @"Sandwitchs", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) makePrediction {
    self.predictionLabel.text=[self.predictionArray objectAtIndex:arc4random_uniform(self.predictionArray.count)];
    
    [UIView animateWithDuration:2.0 animations:^{
        self.predictionLabel.alpha = 1.0;
    }];
}

-(BOOL) canBecomeFirstResponder {
    return YES;
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    self.predictionLabel.text=nil;
    self.predictionLabel.alpha = 0.0;
}

-(void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if( motion == UIEventSubtypeMotionShake){
        [self makePrediction];
    }
}

-(void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"motion canlled");
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    self.predictionLabel.text=nil;
    self.predictionLabel.alpha = 0.0;
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [self makePrediction];
}

@end
