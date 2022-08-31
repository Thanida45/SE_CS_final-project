//
//  RegFormViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/3/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import "MyMemberService.h"
#import "ViewController.h"
#import "RegFormViewController.h"
#import "FaceViewController.h"

@interface RegFormViewController ()

// Private properties
@property (strong, nonatomic)   MyMemberService   *memberService;

@end


@implementation RegFormViewController

@synthesize memberService;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Start Service
    self.memberService = [MyMemberService defaultService];
    
    // Tap Gesture for Hide Keyboard
    UITapGestureRecognizer *oneTapGesture = [[UITapGestureRecognizer alloc]
                                             initWithTarget: self
                                             action: @selector(hideKeyboard:)];
    [oneTapGesture setNumberOfTouchesRequired:1];
    [[self view] addGestureRecognizer:oneTapGesture];
    
}

// Event Gesture for Hide Keyboard
- (void)hideKeyboard:(UITapGestureRecognizer *)sender {
    [txtName resignFirstResponder];
    [txtUsername resignFirstResponder];
    [txtEmail resignFirstResponder];
    [txtTelephone resignFirstResponder];
}

//ระบบเก็บข้อมูลไว้ ยังไม่ไป DB
- (IBAction)btnSave:(id)sender {
    [self performSegueWithIdentifier:@"line0" sender:sender];
    // Add Data Table Service
    NSDictionary *item = @{ @"name": txtName.text,// textfield ข้อมูลสวนตัว
                            @"Username": txtUsername.text,
                            @"email": txtEmail.text,
                            @"tel": txtTelephone.text };
    NSLog(@"%@",item);
    
//DB//
    /*[self.memberService addItem:item completion:^
     {
         UIAlertView *av =
         [[UIAlertView alloc]
          initWithTitle:@"Request Success"
          message:@"Register Data Successfully."
          delegate:nil
          cancelButtonTitle:@"OK"
          otherButtonTitles:nil
          ];
         [av show];
     }];*/
    
    }


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//modal
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"line0"]){
         FaceViewController*p = (FaceViewController*)segue.destinationViewController;
        p.name =(NSArray*) txtName.text;
        p.user =(NSArray*) txtUsername.text;
        p.mail =(NSArray*) txtEmail.text;
        p.tele =(NSArray*) txtTelephone.text;
    }
    
}




-(IBAction)btnCancel
{}


@end
