//
//  ViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/2/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//
#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//check connection
{

    IBOutlet UILabel *lblStatus;
}

@property (nonatomic, strong)   MSClient *cl;
//end check connection

-(IBAction)btnRegister;

-(IBAction)btnLogin;

@end
