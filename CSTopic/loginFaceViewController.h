//
//  loginFaceViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginFaceViewController : UIViewController
- (IBAction)seeStruct:(id)sender;
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@property (strong,nonatomic) NSArray *usr;
@property (strong, nonatomic) IBOutlet UILabel *usrN;
//@property (strong, nonatomic) IBOutlet UILabel *i;
@property(strong,nonatomic) NSString *iidd;
@property(strong,nonatomic) NSString *username;
@property(strong,nonatomic) id sid;
- (IBAction)btnCancel;

@property (strong, nonatomic)NSString *idd;
@property (strong, nonatomic)NSString *nam;
@property (strong, nonatomic)NSString *usernam;
@property (strong, nonatomic)NSString *emai;
@property (strong, nonatomic)NSString *telephon;

@property (strong, nonatomic)NSString *h01;
@property (strong, nonatomic)NSString *y01;
@property (strong, nonatomic)NSString *e01;
@property (strong, nonatomic)NSString *n01;
@property (strong, nonatomic)NSString *m01;


@end
