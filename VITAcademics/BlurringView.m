//
//  BlurringView.m
//  VITAcademics
//
//  Created by Pratham Mehta on 09/11/14.
//  Copyright (c) 2014 Pratham Mehta. All rights reserved.
//

#import "BlurringView.h"

@implementation BlurringView

- (void) setupWithImage:(UIImage *) image
{
    self.originalImageView = [[UIImageView alloc] initWithImage:image];
    self.originalImageView.frame = self.bounds;
    UIImage *blurredImage = [image applyDarkEffect];
    self.blurredImageView = [[UIImageView alloc] initWithImage:blurredImage];
    self.blurredImageView.frame = self.bounds;
    
    [self addSubview:self.originalImageView];
    [self addSubview:self.blurredImageView];
    
    self.blurredImageView.alpha = 0;
}

- (void) setBlurredRatio:(float) ratio
{
    self.blurredImageView.alpha = ratio;
    //self.originalImageView.alpha = 1.0 - ratio;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
