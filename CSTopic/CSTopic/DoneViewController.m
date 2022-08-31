//
//  DoneViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import "DoneViewController.h"

@interface DoneViewController ()

@end

@implementation DoneViewController
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


-(IBAction) btnDone{
    UIAlertView *av =
    [[UIAlertView alloc]
     initWithTitle:@"สวัสดีจ้า"
     message:@"login ได้เลยจ้า"
     delegate:nil
     cancelButtonTitle:@"OK"
     otherButtonTitles:nil
     ];
    [av show];

}


@end
