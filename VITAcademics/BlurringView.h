//
//  BlurringView.h
//  VITAcademics
//
//  Created by Pratham Mehta on 09/11/14.
//  Copyright (c) 2014 Pratham Mehta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+ImageEffects.h"

@interface BlurringView : UIView

@property (nonatomic, strong) UIImageView *originalImageView;
@property (nonatomic, strong) UIImageView *blurredImageView;

- (void) setBlurredRatio:(float) ratio;
- (void) setupWithImage:(UIImage *) image;

@end
