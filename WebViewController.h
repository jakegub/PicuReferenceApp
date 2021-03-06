//
//  WebViewController.h
//  PicuReferenceApp
//
//  Created by Jacob Eichenberger on 12/3/13.
//  Copyright (c) 2013 jakegub.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (void)loadDocument:(NSString *)documentName;

@end
