//
//  loginIconViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//
#import "ProfileViewController.h"
#import "loginIconViewController.h"
#import "MyMemberService.h"
#import "MainViewController.h"
#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import <UIKit/UIKit.h>

@interface loginIconViewController ()
{
    //เฉพาะใน คลาส
    NSArray *logH;
    NSArray *logY;
    NSArray *logE;
    NSArray *logN;
    NSArray *logM;
    NSArray *h;
    NSArray *y;
    NSArray *e;
    NSArray *n;
    NSArray *m;
    int *orderIcon;
    
    NSArray *orders1;
    NSArray *orders2;
    NSArray *orders3;
    NSArray *orders4;
    NSArray *orders5;

}
// Private properties
@property (strong, nonatomic)   MyMemberService  *memberService;

@end

@implementation loginIconViewController
// คล้าย ดีแคร  เอาชื่อ ส่วน gobal ใน loginIconViewController.h มา
@synthesize memberService;
@synthesize usr,Uuser,facelog,face,id01,username01,name01,telephone01,ddd,num,info01,info02,info03;
@synthesize btnFaceLogin;
@synthesize FaceImageLogin;
@synthesize segIconLog,segMenuLog,iconEar1Log,iconEarLog,iconEye1Log,iconEyeLog,iconHairLog,iconMouthLog,iconNoseLog,orders000,orders005,orders004,orders003,orders002,orders001;

- (void)viewDidLoad // ถ้าใส่โค้ดส่วนนี้จะสามารถแสดงได้ทันที
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    // Start Service
    self.memberService = [MyMemberService defaultService];
    FaceImageLogin.image = [UIImage imageNamed:[btnFaceLogin stringByAppendingFormat:@".png"]]; //แสดงใบหน้าที่เลือก รับแบบstring แสดงเป็นรูป
    Uuser.text = usr;
    face = facelog;
    NSLog(@" Your selected face is ...%@ ...and...%@... ",usr,face);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)segmentAction:(id)sender // เงื่อนไข ถ้าเลือก 0 แสดง hair , 1 แสดง eye ....
{
    NSLog(@"segment selected : %ld",(long)segMenuLog.selectedSegmentIndex);//แสดง segment ที่เราเลือกว่าลำดับที่เท่าไหร่
     orderIcon++; // ใช้เรียงลำดับ    ข้อจำกัด  ทำเมนู ประเภท ด้านบนเลือกได้แค่อย่างละครั้ง ไม่งั้น app เด้ง
    if (segMenuLog.selectedSegmentIndex == 0) {
        [segIconLog setImage:[UIImage imageNamed:@"h1.png"] forSegmentAtIndex:0];// h1.png ใส่ใน segment hair ลำดับที่ 0
        [segIconLog setImage:[UIImage imageNamed:@"h2.png"] forSegmentAtIndex:1];
        [segIconLog setImage:[UIImage imageNamed:@"h3.png"] forSegmentAtIndex:2];
        [segIconLog setImage:[UIImage imageNamed:@"h4.png"] forSegmentAtIndex:3];
        [segIconLog setImage:[UIImage imageNamed:@"h5.png"] forSegmentAtIndex:4];
    }
    if (segMenuLog.selectedSegmentIndex == 1) {
        [segIconLog setImage:[UIImage imageNamed:@"y1.png"] forSegmentAtIndex:0];
        [segIconLog setImage:[UIImage imageNamed:@"y2.png"] forSegmentAtIndex:1];
        [segIconLog setImage:[UIImage imageNamed:@"y3.png"] forSegmentAtIndex:2];
        [segIconLog setImage:[UIImage imageNamed:@"y4.png"] forSegmentAtIndex:3];
        [segIconLog setImage:[UIImage imageNamed:@"y5.png"] forSegmentAtIndex:4];
    }
    if (segMenuLog.selectedSegmentIndex == 2) {
        [segIconLog setImage:[UIImage imageNamed:@"e-1.png"] forSegmentAtIndex:0];
        [segIconLog setImage:[UIImage imageNamed:@"e-2.png"] forSegmentAtIndex:1];
        [segIconLog setImage:[UIImage imageNamed:@"e-3.png"] forSegmentAtIndex:2];
        [segIconLog setImage:[UIImage imageNamed:@"e-4.png"] forSegmentAtIndex:3];
        [segIconLog setImage:[UIImage imageNamed:@"e-5.png"] forSegmentAtIndex:4];
    }
    if (segMenuLog.selectedSegmentIndex == 3) {
        [segIconLog setImage:[UIImage imageNamed:@"n1.png"] forSegmentAtIndex:0];
        [segIconLog setImage:[UIImage imageNamed:@"n2.png"] forSegmentAtIndex:1];
        [segIconLog setImage:[UIImage imageNamed:@"n3.png"] forSegmentAtIndex:2];
        [segIconLog setImage:[UIImage imageNamed:@"n4.png"] forSegmentAtIndex:3];
        [segIconLog setImage:[UIImage imageNamed:@"n5.png"] forSegmentAtIndex:4];
    }
    if (segMenuLog.selectedSegmentIndex == 4) {
        [segIconLog setImage:[UIImage imageNamed:@"m1.png"] forSegmentAtIndex:0];
        [segIconLog setImage:[UIImage imageNamed:@"m2.png"] forSegmentAtIndex:1];
        [segIconLog setImage:[UIImage imageNamed:@"m3.png"] forSegmentAtIndex:2];
        [segIconLog setImage:[UIImage imageNamed:@"m4.png"] forSegmentAtIndex:3];
        [segIconLog setImage:[UIImage imageNamed:@"m5.png"] forSegmentAtIndex:4];
    }
    
}

- (IBAction)iconAction:(id)sender //ส่วนที่นำรูปที่เลือกขึ้นในตำแหน่งที่เหมาะสม
{
    
    if (segMenuLog.selectedSegmentIndex==0) {
        
        NSLog(@"icon hair h%ld",(long)segIconLog.selectedSegmentIndex);
        NSInteger user = [segIconLog selectedSegmentIndex];
        if (user == 0) {
            iconHairLog.image = [UIImage imageNamed:@"h1.png"]; //แสดงรูป
            logH =(NSArray*)@"h1.png";
            NSLog(@"%@",logH);
            a=orderIcon; // จะเก็บเลขไว้
        }
        else if (user == 1) {
            iconHairLog.image = [UIImage imageNamed:@"h2.png"];
            logH =(NSArray*)@"h2.png";
            NSLog(@"%@",logH);
            a=orderIcon;
        }
        else if (user == 2) {
            iconHairLog.image = [UIImage imageNamed:@"h3.png"];
            logH =(NSArray*)@"h3.png";
            NSLog(@"%@",logH);
            a=orderIcon;
        }
        else if (user == 3) {
            iconHairLog.image = [UIImage imageNamed:@"h4.png"];
            logH =(NSArray*)@"h4.png";
            NSLog(@"%@",logH);
            a=orderIcon;
        }
        else if (user == 4) {
            iconHairLog.image = [UIImage imageNamed:@"h5.png"];
            logH =(NSArray*)@"h5.png";
            NSLog(@"%@",logH);
            a=orderIcon;
        }
        
    }
    
    if (segMenuLog.selectedSegmentIndex==1) {
        NSLog(@"icon eye y%ld",(long)segIconLog.selectedSegmentIndex);
        NSInteger user = [segIconLog selectedSegmentIndex];
        if (user == 0) {
            iconEyeLog.image = [UIImage imageNamed:@"y1.png"];
            iconEye1Log.image = [UIImage imageNamed:@"y1.png"];
            logY=(NSArray*)@"y1.png";
            NSLog(@"%@",logY);
            b=orderIcon;
        }
        else if (user == 1) {
            iconEyeLog.image = [UIImage imageNamed:@"y2.png"];
            iconEye1Log.image = [UIImage imageNamed:@"y2.png"];
            logY =(NSArray*)@"y2.png";
            NSLog(@"%@",logY);
            b=orderIcon;
        }
        else if (user == 2) {
            iconEyeLog.image = [UIImage imageNamed:@"y3.png"];
            iconEye1Log.image = [UIImage imageNamed:@"y3.png"];
            logY =(NSArray*)@"y3.png";
            NSLog(@"%@",logY);
            b=orderIcon;
        }
        else if (user == 3) {
            iconEyeLog.image = [UIImage imageNamed:@"y4.png"];
            iconEye1Log.image = [UIImage imageNamed:@"y4.png"];
            logY =(NSArray*)@"y4.png";
            NSLog(@"%@",logY);
            b=orderIcon;
        }
        else if (user == 4) {
            iconEyeLog.image = [UIImage imageNamed:@"y5.png"];
            iconEye1Log.image = [UIImage imageNamed:@"y5.png"];
            logY =(NSArray*)@"y5.png";
            NSLog(@"%@",logY);
            b=orderIcon;
        }
    }
    
    if (segMenuLog.selectedSegmentIndex==2) {
        NSLog(@"icon ear e%ld",(long)segIconLog.selectedSegmentIndex);
        NSInteger user = [segIconLog selectedSegmentIndex];
        if (user == 0) {
            
            iconEarLog.image = [UIImage imageNamed:@"e-1.png"];
            iconEar1Log.image = [UIImage imageNamed:@"e-1.png"];
            logE =(NSArray*)@"e-1.png";
            NSLog(@"%@",logE);
            c=orderIcon;
        }
        else if (user == 1) {
            iconEarLog.image = [UIImage imageNamed:@"e-2.png"];
            iconEar1Log.image = [UIImage imageNamed:@"e-2.png"];
            logE =(NSArray*)@"e-2.png";
            NSLog(@"%@",logE);
            c=orderIcon;
        }
        else if (user == 2) {
            iconEarLog.image = [UIImage imageNamed:@"e-3.png"];
            iconEar1Log.image = [UIImage imageNamed:@"e-3.png"];
            logE =(NSArray*)@"e-3.png";
            NSLog(@"%@",logE);
            c=orderIcon;
        }
        else if (user == 3) {
            iconEarLog.image = [UIImage imageNamed:@"e-4.png"];
            iconEar1Log.image = [UIImage imageNamed:@"e-4.png"];
            logE =(NSArray*)@"e-4.png";
            NSLog(@"%@",logE);
            c=orderIcon;
        }
        else if (user == 4) {
            iconEarLog.image = [UIImage imageNamed:@"e-5.png"];
            iconEar1Log.image = [UIImage imageNamed:@"e-5.png"];
            logE =(NSArray*)@"e-5.png";
            NSLog(@"%@",logE);
            c=orderIcon;

        }
    }
    
    if (segMenuLog.selectedSegmentIndex==3) {
        NSLog(@"icon nose n%ld",(long)segIconLog.selectedSegmentIndex);
        NSInteger user = [segIconLog selectedSegmentIndex];
        if (user == 0) {
            iconNoseLog.image = [UIImage imageNamed:@"n1.png"];
            logN =(NSArray*)@"n1.png";
            NSLog(@"%@",logN);
            d=orderIcon;

        }
        else if (user == 1) {
            iconNoseLog.image = [UIImage imageNamed:@"n2.png"];
            logN =(NSArray*)@"n2.png";
            NSLog(@"%@",logN);
            d=orderIcon;

        }
        else if (user == 2) {
            iconNoseLog.image = [UIImage imageNamed:@"n3.png"];
            logN =(NSArray*)@"n3.png";
            NSLog(@"%@",logN);
            d=orderIcon;

        }
        else if (user == 3) {
            iconNoseLog.image = [UIImage imageNamed:@"n4.png"];
            logN =(NSArray*)@"n4.png";
            NSLog(@"%@",logN);
            d=orderIcon;

        }
        else if (user == 4) {
            iconNoseLog.image = [UIImage imageNamed:@"n5.png"];
            logN =(NSArray*)@"n5.png";
            NSLog(@"%@",logN);
            d=orderIcon;

        }
    }
    
    if (segMenuLog.selectedSegmentIndex==4) {
        NSLog(@"icon mouth m%ld",(long)segIconLog.selectedSegmentIndex);
        NSInteger user = [segIconLog selectedSegmentIndex];
        if (user == 0) {
            iconMouthLog.image = [UIImage imageNamed:@"m1.png"];
            logM=(NSArray*)@"m1.png";
            NSLog(@"%@",logM);
            f=orderIcon;
        }
        else if (user == 1) {
            iconMouthLog.image = [UIImage imageNamed:@"m2.png"];
            logM=(NSArray*)@"m2.png";
            NSLog(@"%@",logM);
            f=orderIcon;
        }
        else if (user == 2) {
            iconMouthLog.image = [UIImage imageNamed:@"m3.png"];
            logM=(NSArray*)@"m3.png";
            NSLog(@"%@",logM);
            f=orderIcon;
        }
        else if (user == 3) {
            iconMouthLog.image = [UIImage imageNamed:@"m4.png"];
            logM=(NSArray*)@"m4.png";
            NSLog(@"%@",logM);
            f=orderIcon;
        }
        else if (user == 4) {
            iconMouthLog.image = [UIImage imageNamed:@"m5.png"];
            logM=(NSArray*)@"m5.png";
            NSLog(@"%@",logM);
            f=orderIcon;
        }
    }
    
    
    NSLog(@"------------select icon----------checking------------");

    h = logH;
    NSLog(@"%d %@",a,h); // โชว์ ให้เห็นว่า a-f คือเลขอะไร  ชื่อไอคอนอะไรบ้าง
    
    y = logY;
    NSLog(@"%d %@",b,y);
    
    e = logE;
    NSLog(@"%d %@",c,e);
    
    n = logN;
    NSLog(@"%d %@",d,n);
    
    m = logM;
    NSLog(@"%d %@",f,m);
    

    // check order    มันขึ้นที่ละ 4 นะ คือ 4 8 12 16 20 ต่อ 5 เมนู
    
    if (a==4) {
        orders1=h;//ใส่ข้อมูลลงลำดับ
    }else if (b==4) {
        orders1=y;
    }
    else if (c==4) {
        orders1=e;
    }
    else if (d==4) {
        orders1=n;
    }
    else if (f==4) {
        orders1=m;
    }
    
    if (a==8) {
        orders2=h;
    }else if (b==8) {
        orders2=y;
    }
    else if (c==8) {
        orders2=e;
    }
    else if (d==8) {
        orders2=n;
    }
    else if (f==8) {
        orders2=m;
    }
    
    if (a==12) {
        orders3=h;
    }else if (b==12) {
        orders3=y;
    }
    else if (c==12) {
        orders3=e;
    }
    else if (d==12) {
        orders3=n;
    }
    else if (f==12) {
        orders3=m;
    }
    
    if (a==16) {
        orders4=h;
    }else if (b==16) {
        orders4=y;
    }
    else if (c==16) {
        orders4=e;
    }
    else if (d==16) {
        orders4=n;
    }
    else if (f==16) {
        orders4=m;
    }
    
    
    if (a==20) {
        orders5=h;
    }else if (b==20) {
        orders5=y;
    }
    else if (c==20) {
        orders5=e;
    }
    else if (d==20) {
        orders5=n;
    }
    else if (f==20) {
        orders5=m;
    }
    
// ดึงข้อมูล ของ username นั้นๆ
    NSDictionary *chk = @{@"username":Uuser.text};
    // function checkLogin อยุ่ใน mymemberservice
    [self.memberService checkLogin:chk completion:^
     {
         loginIconViewController *viewInfo =[[loginIconViewController alloc]initWithNibName:nil bundle:nil];
         NSDictionary *item = [self.memberService.items objectAtIndex:0];
         viewInfo.id01 = [item objectForKey:@"id"];
         viewInfo.name01 = [item objectForKey:@"name"];
         viewInfo.username01 = [item objectForKey:@"username"];
         viewInfo.telephone01 = [item objectForKey:@"tel"];
         viewInfo.mail01 = [item objectForKey:@"email"];
         viewInfo.face01 = [item objectForKey:@"iface"];
         viewInfo.or01 = [item objectForKey:@"order1"];
         viewInfo.or02 = [item objectForKey:@"order2"];
         viewInfo.or03 = [item objectForKey:@"order3"];
         viewInfo.or04 = [item objectForKey:@"order4"];
         viewInfo.or05 = [item objectForKey:@"order5"];
         info01.text = viewInfo.name01;
         info02.text = viewInfo.telephone01;
         info03.text = viewInfo.mail01;
         orders001 = viewInfo.or01;
         orders002 = viewInfo.or02;
         orders003 = viewInfo.or03;
         orders004 = viewInfo.or04;
         orders005 = viewInfo.or05;
         orders000 = viewInfo.face01;
         
         
         NSLog(@"show information : %@ %@ %@ %@ %@ %@ %@ %@ %@ %@",viewInfo.id01,viewInfo.name01,viewInfo.username01,viewInfo.telephone01,viewInfo.face01,viewInfo.or01,viewInfo.or02,viewInfo.or03,viewInfo.or04,viewInfo.or05);
         NSLog(@"show information order : %@ %@ %@ %@ %@ %@",orders000,orders001,orders002,orders003,orders004,orders005);
         NSLog(@"icon :5");
         
         NSLog(@"icon order face :...%@...   login face:...%@...",viewInfo.face01,face);
         NSLog(@"icon order 1 :...%@...   login order 1:...%@...",viewInfo.or01,orders1);
         NSLog(@"icon order 2 :...%@...   login order 2:...%@...",viewInfo.or02,orders2);
         NSLog(@"icon order 3 :...%@...   login order 3:...%@...",viewInfo.or03,orders3);
         NSLog(@"icon order 4 :...%@...   login order 4:...%@...",viewInfo.or04,orders4);
         NSLog(@"icon order 5 :...%@...   login order 5:...%@...",viewInfo.or05,orders5);
         

     }];
   
}



//set alpha icon ชัด ไม่ชัด
- (IBAction)sliderChanged:(id)sender {
    float value = [sliderObj value];
    [iconHairLog setAlpha:value];
    [iconEyeLog setAlpha:value];
    [iconEye1Log setAlpha:value];
    [iconEarLog setAlpha:value];
    [iconEar1Log setAlpha:value];
    [iconNoseLog setAlpha:value];
    [iconMouthLog setAlpha:value];
    [FaceImageLogin setAlpha:value];
    
}


//check condition  5   icon
-(IBAction) CheckSubmit:(id)sender
{
   
    NSLog(@"show information order : %@ %@ %@ %@ %@ %@",orders000,orders001,orders002,orders003,orders004,orders005);
    //isEqualToString ใช้สำหรับ check string แทน ==
    if ( [orders000 isEqualToString:face]&&[orders001 isEqualToString:(NSString*)orders1]&&[orders002 isEqualToString:(NSString*)orders2]&&[orders003 isEqualToString:(NSString*)orders3]&&[orders004 isEqualToString:(NSString*)orders4]&&[orders005 isEqualToString:(NSString*)orders5]) {
        


            NSDictionary *item = @{ @"username": usr,
                                    @"iface": face,
                                    @"icon1": h,
                                    @"icon2": y,
                                    @"icon3": e,
                                    @"icon4": n,
                                    @"icon5": m,
                                    @"order1":orders1,
                                    @"order2":orders2,
                                    @"order3":orders3,
                                    @"order4":orders4,
                                    @"order5":orders5
                                               };
            NSLog(@"%@",item);
            //ถ้าผ่าน ระบบบันทึกอีกรอบ แล้วแสดงข้อความ
            [self.memberService addItem:item completion:^
             
             
              {   UIAlertView *av =
                  [[UIAlertView alloc]
                   initWithTitle:@"password Success"
                   message:@"login Successfully."
                   delegate:nil
                   cancelButtonTitle:@"OK"
                   otherButtonTitles:nil
                   ];
                  [av show];
              NSLog(@"save login !!!!!  %@",item);
              
            }
             
             ];
        //[self performSegueWithIdentifier:@"main" sender:sender];

            }
    else
    
       {
            NSLog(@"password not success ");
            
            UIAlertView *av =
            [[UIAlertView alloc]
             initWithTitle:@"password incomplete"
             message:@"รหัสผ่านผิดพลาด กรุณาใส่ใหม่"
             delegate:nil
             cancelButtonTitle:@"Login ใหม่"
             otherButtonTitles:nil
             ];
            [av show];
           
       }
    
    
    

    
}



//modal 
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"main"]){
        MainViewController*p = (MainViewController*)segue.destinationViewController;
        //p.btnFaceLogin = ((UIButton*)sender).titleLabel.text;
        p.usrname = Uuser.text;
        
        NSLog(@"sent to mainViewController  ..%@.",Uuser.text);
        //p.facelog =((UIButton*)sender).titleLabel.text;
        }
}








-(IBAction) btnCancel{

}



@end
