//
//  ViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/2/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize cl;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //check connection
    MSClient *client = [MSClient clientWithApplicationURLString:@"https://thaicreate.azure-mobile.net/"
                                                applicationKey:@"kZjUAomOlQgZIgBNBSmZpXwElSetbo46"];

    self.cl =[client clientWithFilter:self];

    if (self.cl != [NSNull null]) {
        
        lblStatus.text = @"iOS Mobile Service Connected";
    }
    else
    {
        lblStatus.text = @"iOS Mobile Service Connect Failed";
    }

    UIAlertView *av =
    [[UIAlertView alloc]
     initWithTitle:@"แนะนำ"
     message:@"*ดู Guide ด้านล่างก่อนนะคะ *"
     delegate:nil
     cancelButtonTitle:@"OK"
     otherButtonTitles:nil
     ];
    [av show];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction) btnRegister{}


-(IBAction) btnLogin{}


@end
