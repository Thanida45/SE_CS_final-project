//
//  LoginFormViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/3/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIStoryboard.h>

@interface LoginFormViewController : UIViewController
{
    NSString *ssid;
    NSString *name0;
    
    IBOutlet UITextField *txtUsername;
//   IBOutlet UITextField *txtName;
}
@property (strong, nonatomic)NSString *sid;
@property (strong, nonatomic)NSString *na;
@property (strong, nonatomic)NSString *u;
@property (strong, nonatomic)NSString *em;
@property (strong, nonatomic)NSString *t;
@property (strong, nonatomic)NSString *f;
@property (strong, nonatomic)NSString *h;
@property (strong, nonatomic)NSString *y;
@property (strong, nonatomic)NSString *e;
@property (strong, nonatomic)NSString *n;
@property (strong, nonatomic)NSString *m;
@property (strong, nonatomic)NSString *h1;
@property (strong, nonatomic)NSString *y1;
@property (strong, nonatomic)NSString *e1;
@property (strong, nonatomic)NSString *n1;
@property (strong, nonatomic)NSString *m1;

//@property(nonatomic,retain) UIBarButtonItem *Bnext;
@property (strong, nonatomic) id d;
//@property (strong, nonatomic) IBOutlet UILabel *lblusername;
-(IBAction)btnLogin:(id)sender;
//-(IBAction)btnlogFace;

-(IBAction)btnCancel;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end
