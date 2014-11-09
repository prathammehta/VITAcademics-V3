//
//  MainContainerViewController.m
//  VITAcademics
//
//  Created by Pratham Mehta on 09/11/14.
//  Copyright (c) 2014 Pratham Mehta. All rights reserved.
//

#import "MainContainerViewController.h"
#import "BlurringView.h"

@interface MainContainerViewController ()

@property (nonatomic, strong) BlurringView *test;
@property (nonatomic, strong) UISlider *testSlider;

@end

@implementation MainContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.test = [[BlurringView alloc] initWithFrame:self.view.bounds];
    
    [self.test setupWithImage:[UIImage imageNamed:@"test.jpg"]];
    [self.view addSubview:self.test];
    
    self.testSlider = [[UISlider alloc] init];
    self.testSlider.center = CGPointMake(200, self.view.center.y);
    [self.testSlider addTarget:self action:@selector(changeBlur:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.testSlider];
}

- (void) changeBlur:(UISlider *) slider
{
    [self.test setBlurredRatio:slider.value];
}

@end
