//
//  loginFaceViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//
#import "loginIconViewController.h"
#import "loginFaceViewController.h"
#import "MyMemberService.h"
#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import "LoginFormViewController.h"
@interface loginFaceViewController ()
// Private properties
@property (strong, nonatomic)   MyMemberService  *memberService;


@end

@implementation loginFaceViewController
@synthesize usr,usrN,username,sid,nam,usernam,emai,telephon,iidd,idd;
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
	// Do any additional setup after loading the view.
    usrN.text =(NSString*)usr; //รับชื่อ username จาก คลาสก่อนหน้า ใส่ใน label แสดงชื่อ
    idd=iidd;
    
    // Start Service
    self.memberService = [MyMemberService defaultService];
    
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) seeStruct:(id)sender // ปุ่มใบหน้า 6 อันแต่เลือกได้ 1 แลัวจะเปลียนไปหน้าถัดไปเลย
{
    [self performSegueWithIdentifier:@"showFace" sender:sender];//modal มีการทำงานละ ลักษณะโค้ต เหมือนกัน
    
  /*
   ลอง check 
   
   NSDictionary *chk = @{@"username":usrN.text};
    [self.memberService checkLogin:chk completion:^
     {
    loginFaceViewController *viewInfo =[[loginFaceViewController alloc]initWithNibName:nil bundle:nil];
    NSDictionary *item = [self.memberService.items objectAtIndex:0];
    viewInfo.sid = [item objectForKey:@"id"];
    viewInfo.nam = [item objectForKey:@"name"];
    viewInfo.usernam = [item objectForKey:@"username"];
   // viewInfo.fa = [item objectForKey:@"iface"];
   // viewInfo.h1 = [item objectForKey:@"order1"];
   // viewInfo.y1 = [item objectForKey:@"order2"];
   // viewInfo.e1 = [item objectForKey:@"order3"];
   // viewInfo.n1 = [item objectForKey:@"order4"];
   // viewInfo.m1 = [item objectForKey:@"order5"];
    NSLog(@"show information : %@ %@ %@ ",viewInfo.sid,viewInfo.nam,viewInfo.usernam);
     }
     ];
    */
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender//modal มีการทำงานละ ลักษณะโค้ต เหมือนกัน
{
    if([segue.identifier isEqualToString:@"showFace"]){
         loginIconViewController*p = (loginIconViewController*)segue.destinationViewController;
        p.btnFaceLogin = ((UIButton*)sender).titleLabel.text;
        p.usr = usrN.text;
        p.facelog =((UIButton*)sender).titleLabel.text; // เอาหน้าไปหน้าถัดไป
        p.ddd = idd;
        NSLog(@"selected ......%@ %@ %@",usrN.text,iidd,idd);
        }
}

-(IBAction) btnCancel{}
@end
