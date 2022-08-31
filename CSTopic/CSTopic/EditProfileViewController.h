//
//  EditProfileViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditProfileViewController : UIViewController

{
    IBOutlet UITextField *txtName;
    IBOutlet UITextField *txtUsername;
    IBOutlet UITextField *txtEmail;
    IBOutlet UITextField *txtTelephone;
}
@property (nonatomic, strong)   NSArray *upItems;
@property (strong, nonatomic) id sid;

-(IBAction)save:(id)sender;
//-(IBAction) btnGuide;

- (IBAction)btnCancel;

@end
