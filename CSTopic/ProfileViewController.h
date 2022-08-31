//
//  ProfileViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/3/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController
{
    IBOutlet UILabel *lblName;
    IBOutlet UILabel *lblUsername;
    IBOutlet UILabel *lblEmail;
    IBOutlet UILabel *lblTel;
    

}
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *user;
@property (strong, nonatomic) NSString *mail;
@property (strong, nonatomic) NSString *phone;

@property (strong, nonatomic) NSString *usrname01;
@property (strong, nonatomic) UILabel *us;
@property (strong,nonatomic) NSString *complete;
@property(strong,nonatomic) id sid;
- (IBAction)btnCancel;
- (IBAction)btnOutGoHome;

@end
