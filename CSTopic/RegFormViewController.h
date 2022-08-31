//
//  RegFormViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/3/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegFormViewController : UIViewController
{
    IBOutlet UITextField *txtName;
    IBOutlet UITextField *txtUsername;
    IBOutlet UITextField *txtEmail;
    IBOutlet UITextField *txtTelephone;
}
-(IBAction)btnSave:(id)sender;

-(IBAction) btnCancel;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;


@end
