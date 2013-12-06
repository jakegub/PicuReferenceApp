//
//  WebViewController.m
//  PicuReferenceApp
//
//  Created by Jacob Eichenberger on 12/3/13.
//  Copyright (c) 2013 jakegub.com. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

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
    [self loadDocument:@"PicuPage01"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadDocument:(NSString *)documentName
{
    NSString *docPath = [[NSBundle mainBundle] pathForResource:documentName ofType:@"doc"];
    self.webView.scalesPageToFit = YES; //PDF page should be scaled to display whole page in screen
    self.webView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    [self.view addSubview:self.webView];
    NSURL *docURL = [NSURL fileURLWithPath:docPath];
    [self.webView loadRequest:[NSURLRequest requestWithURL:docURL]];
}

@end
