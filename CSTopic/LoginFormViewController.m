//
//  LoginFormViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/3/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//
#import "MyMemberService.h"
#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import "ProfileViewController.h"
#import "loginIconViewController.h"
#import "LoginFormViewController.h"
#import "loginFaceViewController.h"
#import "ViewController.h"

@interface LoginFormViewController ()

// Private properties
@property (strong, nonatomic)   MyMemberService   *memberService;

@end

@implementation LoginFormViewController
@synthesize d;
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
- (void)hideKeyboard:(UITapGestureRecognizer *)sender
{
    [self performSegueWithIdentifier:@"line3" sender:sender];//line3 คือ ชื่อเส้นโยงจาก ui นี้ ไปยัง ui face
//    [txtPassword resignFirstResponder];
//    [txtName resignFirstResponder];
    [txtUsername resignFirstResponder];

}

//กดปุ่ม login จะมีการกระทำ คือ check  username ถ้ามีอยู่ระบบจะไม่แสดง และเปลี่ยนหน้า
- (IBAction)btnLogin:(id)sender
{
    
    NSDictionary *chk = @{@"username":txtUsername.text};//txtUsername.text การใส่ username แล้วใส่ใน dictionary คล้าย Array
    NSLog(@"user : %@",chk);
        [self.memberService checkLogin:chk completion:^
    {
         if(memberService.items.count==0) // check ภ้าไม่มีระบบจะแสดง alert view  ข้อความด้านล่าง
         {
             UIAlertView *av =
             [[UIAlertView alloc]
              initWithTitle:@"Username ไม่มีอยู่ในระบบ"
              message:@"   กรุณากลับไป ลงทะเบียน คะ  "
              delegate:nil
              cancelButtonTitle:@"OK"
              otherButtonTitles:nil
              ];
             [av show];
             NSLog(@"failed");
         }
         else
                // Add Data Table Service

         {//OK  และอยากให้แสดงให้รู้ว่า username ถูกต้อง
           /*   UIAlertView *av =
              [[UIAlertView alloc]
              initWithTitle:@"Login OK."
               message:@"Next Step login passFace"
              delegate:nil
              cancelButtonTitle:@"OK"
              otherButtonTitles:nil
              ];
                 [av show]; */
             NSLog(@"%@",chk);  // เหมือน printf ใน c++  แสดง chk คือ แสดงชื่อ username
             
             //สร้าง object เพื่อทำการเข้าถึงข้อมูลใน DB แล้วดึงข้อมูลอื่นๆของ username นั้น ออกมาโดยขที่มีในคอลัมน์อื่นๆที่เป็นชื่อสีแดง
             LoginFormViewController *viewInfo =[[LoginFormViewController alloc]initWithNibName:nil bundle:nil];
             NSDictionary *item = [self.memberService.items objectAtIndex:0];
             viewInfo.sid = [item objectForKey:@"id"];
             viewInfo.na = [item objectForKey:@"name"];
             viewInfo.u = [item objectForKey:@"username"];
             viewInfo.em = [item objectForKey:@"email"];
             viewInfo.t = [item objectForKey:@"tel"];
             viewInfo.f = [item objectForKey:@"iface"];
             viewInfo.h = [item objectForKey:@"icon1"];
             viewInfo.y = [item objectForKey:@"icon2"];
             viewInfo.e = [item objectForKey:@"icon3"];
             viewInfo.n = [item objectForKey:@"icon4"];
             viewInfo.m = [item objectForKey:@"icon5"];
             viewInfo.h1 = [item objectForKey:@"order1"];
             viewInfo.y1 = [item objectForKey:@"order2"];
             viewInfo.e1 = [item objectForKey:@"order3"];
             viewInfo.n1 = [item objectForKey:@"order4"];
             viewInfo.m1 = [item objectForKey:@"order5"];
             NSLog(@"show information : %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ ",viewInfo.sid,viewInfo.u,viewInfo.em,viewInfo.t,viewInfo.f,viewInfo.h1,viewInfo.y1,viewInfo.e1,viewInfo.n1,viewInfo.m1);
             
             ssid = viewInfo.sid;
             
             //ใช้กับ เส้น ที่เป็น modal
             [self performSegueWithIdentifier:@"line3" sender:sender];// ส่งทาง line3 ข้อมูลที่จะส่งจะอยู่ในส่วนนี้เท่านั้น สามารถเปลี่ยนที่ได้ตามที่อยู่ของข้อมูล
       }
        
        
    }];

 }

//ใช้กับ เส้น ที่เป็น modal
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender //ส่งทาง line3 ข้อมูลที่จะส่งจะถูกใส่ในตัวแปรของ class ถัดไป
{
    if([segue.identifier isEqualToString:@"line3"]){
        loginFaceViewController*p = (loginFaceViewController*)segue.destinationViewController;//ใช้เข้าถึงตัวแปร
        p.usr =(NSArray*)txtUsername.text;//p เข้าถึงตัวแปร ชื่อ usr ที่อยุ่ใน loginfaceView...
        p.iidd = ssid;
        NSLog(@"This........ %@ %@",p.usr,ssid);
        
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction) btnCancel{}//ทำงานแบบไม่มีเงื่อนไข ทำตามเส้นโยงการทำงาน

@end
