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
//    NSString *fullURL = @"http://conecode.com";
//    NSURL *url = [NSURL URLWithString:fullURL];
//    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
//    [self.webView loadRequest:requestObj];
    [self loadDocument:@"picu" inView:self.webView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadDocument:(NSString *)documentName inView:(UIWebView *)webView
{
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSLog(@"Main bundle path: %@", mainBundle);
    NSString *path = [mainBundle pathForResource:documentName ofType:@"doc"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

@end
