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
    
    UIImage * image = [UIImage imageNamed:@"NeuroEmergencies.png"];
    
    NSAssert(image, @"image must not be ni."
             "Check that image is added to bundle"
             " and that the filename matches the above.");
    
//    self->imageView.image = image;
//    [self->imageView sizeToFit];
//    
//    self->scrollView.contentSize = image.size;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews {
    scrollView.contentSize = imageView.frame.size;
}

@end
