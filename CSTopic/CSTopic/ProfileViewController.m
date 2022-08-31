//
//  ProfileViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/3/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//
#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import "ProfileViewController.h"
#import "LoginFormViewController.h"
#import "MainViewController.h"
#import "MyMemberService.h"

@interface ProfileViewController ()

// Private properties
@property (strong, nonatomic)   MyMemberService   *memberService;


@end

@implementation ProfileViewController
@synthesize usrname01,sid,us,name,user,mail,phone;
@synthesize memberService;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"sended data %@",usrname01);
    //lblUsername.text=usrname01;
    
    NSLog(@"sended data %@",lblUsername.text);
    self.memberService = [MyMemberService defaultService];
    
    NSDictionary *chk0 = @{@"username":usrname01};
    [self.memberService checkLogin:chk0 completion:^
     {
     ProfileViewController *viewInfo1 =[[ProfileViewController alloc]initWithNibName:nil bundle:nil];
     NSDictionary *item = [self.memberService.items objectAtIndex:0];
     viewInfo1.mail = [item objectForKey:@"email"];  // ดึงข้อมูลเหมือนทุกที่
     viewInfo1.name = [item objectForKey:@"name"];
     viewInfo1.user = [item objectForKey:@"username"];
     viewInfo1.phone = [item objectForKey:@"tel"];
         lblName.text=viewInfo1.name;   //ใส่ใน label ให้แสดง
         lblUsername.text=viewInfo1.user;
         lblEmail.text= viewInfo1.mail;
         lblTel.text=viewInfo1.phone;
    NSLog(@"show your information : %@ %@ %@ %@",viewInfo1.name,viewInfo1.user,viewInfo1.mail,viewInfo1.phone);
    
         
     }
     
             ];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender//modal
{
    if([segue.identifier isEqualToString:@"can"]){
        MainViewController*p = (MainViewController*)segue.destinationViewController;
        //p.btnFaceLogin = ((UIButton*)sender).titleLabel.text;
        p.usrname =lblUsername.text;
        //p.facelog =((UIButton*)sender).titleLabel.text;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) btnCancel{}

-(IBAction) btnOutGoHome{}



     
@end
