//
//  PicuReferenceAppNeuroEmergenciesViewController.m
//  PicuReferenceApp
//
//  Created by Jacob Eichenberger on 11/25/13.
//  Copyright (c) 2013 jakegub.com. All rights reserved.
//

#import "PicuReferenceAppNeuroEmergenciesViewController.h"

@interface PicuReferenceAppNeuroEmergenciesViewController ()


@end

@implementation PicuReferenceAppNeuroEmergenciesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews {
    scrollView.contentSize = imageView.frame.size;
}

-(UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return imageView;
}

- (void)scrollViewDidZoom:(UIScrollView *)scrllView
{
    UIView *subView = [scrllView.subviews objectAtIndex:0];
    
    CGFloat offsetX = (scrllView.bounds.size.width > scrllView.contentSize.width)?
    (scrllView.bounds.size.width - scrllView.contentSize.width) * 0.5 : 0.0;
    
    CGFloat offsetY = (scrllView.bounds.size.height > scrllView.contentSize.height)?
    (scrllView.bounds.size.height - scrllView.contentSize.height) * 0.5 : 0.0;
    
    subView.center = CGPointMake(scrllView.contentSize.width *0.5 + offsetX, scrllView.contentSize.height *0.5 + offsetY);   
    
}

@end
