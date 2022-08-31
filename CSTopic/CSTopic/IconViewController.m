//
//  IconViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/4/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//
#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import "MyMemberService.h"
#import "FaceViewController.h"
#import "IconViewController.h"
#import "DoneViewController.h"
#import "RegFormViewController.h"

@interface IconViewController ()
{
    NSArray *h;
    NSArray *y;
    NSArray *e;
    NSArray *n;
    NSArray *m;
    NSArray *iconH;
    NSArray *iconY;
    NSArray *iconE;
    NSArray *iconN;
    NSArray *iconM;
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

@implementation IconViewController


@synthesize FaceImageR;
@synthesize btnFaceReg;
@synthesize segMenu;
@synthesize segIcon;
@synthesize iconHair , iconEar , iconEar1 , iconEye , iconEye1 , iconMouth , iconNose;
@synthesize goT,goM,goU,goN ,tM,tN,tTel,tU,goF ,tF ;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    // Start Service
    self.memberService = [MyMemberService defaultService];
    
    FaceImageR.image = [UIImage imageNamed:[btnFaceReg stringByAppendingFormat:@".png"]];
    
    tF = goF;
    tN = goN;
    tU = goU;
    tM = goM;
    tTel = goT;

    

}


//   FaceImageR = img-Face

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//set images in segment
- (IBAction)segmentAction:(id)sender
{
    NSLog(@"segment selected : %ld",(long)segMenu.selectedSegmentIndex);
    orderIcon++;
    if (segMenu.selectedSegmentIndex == 0) {
        [segIcon setImage:[UIImage imageNamed:@"h1.png"] forSegmentAtIndex:0];
        [segIcon setImage:[UIImage imageNamed:@"h2.png"] forSegmentAtIndex:1];
        [segIcon setImage:[UIImage imageNamed:@"h3.png"] forSegmentAtIndex:2];
        [segIcon setImage:[UIImage imageNamed:@"h4.png"] forSegmentAtIndex:3];
        [segIcon setImage:[UIImage imageNamed:@"h5.png"] forSegmentAtIndex:4];
    }
    if (segMenu.selectedSegmentIndex == 1) {
        [segIcon setImage:[UIImage imageNamed:@"y1.png"] forSegmentAtIndex:0];
        [segIcon setImage:[UIImage imageNamed:@"y2.png"] forSegmentAtIndex:1];
        [segIcon setImage:[UIImage imageNamed:@"y3.png"] forSegmentAtIndex:2];
        [segIcon setImage:[UIImage imageNamed:@"y4.png"] forSegmentAtIndex:3];
        [segIcon setImage:[UIImage imageNamed:@"y5.png"] forSegmentAtIndex:4];
    }
    if (segMenu.selectedSegmentIndex == 2) {
        [segIcon setImage:[UIImage imageNamed:@"e-1.png"] forSegmentAtIndex:0];
        [segIcon setImage:[UIImage imageNamed:@"e-2.png"] forSegmentAtIndex:1];
        [segIcon setImage:[UIImage imageNamed:@"e-3.png"] forSegmentAtIndex:2];
        [segIcon setImage:[UIImage imageNamed:@"e-4.png"] forSegmentAtIndex:3];
        [segIcon setImage:[UIImage imageNamed:@"e-5.png"] forSegmentAtIndex:4];
    }
    if (segMenu.selectedSegmentIndex == 3) {
        [segIcon setImage:[UIImage imageNamed:@"n1.png"] forSegmentAtIndex:0];
        [segIcon setImage:[UIImage imageNamed:@"n2.png"] forSegmentAtIndex:1];
        [segIcon setImage:[UIImage imageNamed:@"n3.png"] forSegmentAtIndex:2];
        [segIcon setImage:[UIImage imageNamed:@"n4.png"] forSegmentAtIndex:3];
        [segIcon setImage:[UIImage imageNamed:@"n5.png"] forSegmentAtIndex:4];
    }
    if (segMenu.selectedSegmentIndex == 4) {
        [segIcon setImage:[UIImage imageNamed:@"m1.png"] forSegmentAtIndex:0];
        [segIcon setImage:[UIImage imageNamed:@"m2.png"] forSegmentAtIndex:1];
        [segIcon setImage:[UIImage imageNamed:@"m3.png"] forSegmentAtIndex:2];
        [segIcon setImage:[UIImage imageNamed:@"m4.png"] forSegmentAtIndex:3];
        [segIcon setImage:[UIImage imageNamed:@"m5.png"] forSegmentAtIndex:4];
    }
    //NSLog(@"segment selected : %ld",(long)segMenu.selectedSegmentIndex);
   ;
}

//set function >> เลือกไอคอน >> show ไอคอนที่เลือก
- (IBAction)iconAction:(id)sender
{
    
        if (segMenu.selectedSegmentIndex==0) {
         
        NSLog(@"icon hair h%ld",(long)segIcon.selectedSegmentIndex);
        NSInteger user = [segIcon selectedSegmentIndex];
        if (user == 0) {
            iconHair.image = [UIImage imageNamed:@"h1.png"];
            iconH =(NSArray*)@"h1.png";
            NSLog(@" %@",iconH);
            
//            NSLog(@"order %d",orderIcon);
            a=orderIcon;
        }
        else if (user == 1) {
            iconHair.image = [UIImage imageNamed:@"h2.png"];
            iconH=(NSArray*)@"h2.png";
            NSLog(@"%@",iconH);
            
//            NSLog(@"order %d",orderIcon);
            a=orderIcon;
            }
        else if (user == 2) {
            iconHair.image = [UIImage imageNamed:@"h3.png"];
            iconH=(NSArray*)@"h3.png";
            NSLog(@"%@",iconH);
            
//            NSLog(@"order %d",orderIcon);
            a=orderIcon;
            }
        else if (user == 3) {
            iconHair.image = [UIImage imageNamed:@"h4.png"];
            iconH =(NSArray*)@"h4.png";
            NSLog(@"%@",iconH);
           
//            NSLog(@"order %d",orderIcon);
            a=orderIcon;
            }
        else if (user == 4) {
            iconHair.image = [UIImage imageNamed:@"h5.png"];
            iconH =(NSArray*)@"h5.png";
            NSLog(@"%@",iconH);
            
//            NSLog(@"order %d",orderIcon);
            a=orderIcon;
        }

}

    if (segMenu.selectedSegmentIndex==1) {
        NSLog(@"icon eye y%ld",(long)segIcon.selectedSegmentIndex);
        NSInteger user = [segIcon selectedSegmentIndex];
       
        
        if (user == 0) {
            iconEye.image = [UIImage imageNamed:@"y1.png"];
            iconEye1.image = [UIImage imageNamed:@"y1.png"];
            iconY =(NSArray*)@"y1.png";
            NSLog(@"%@",iconY);
           
//            NSLog(@"order %d",orderIcon);
            b=orderIcon;
        }
        else if (user == 1) {
            iconEye.image = [UIImage imageNamed:@"y2.png"];
            iconEye1.image = [UIImage imageNamed:@"y2.png"];
            iconY =(NSArray*)@"y2.png";
            NSLog(@"%@",iconY);
            
//            NSLog(@"order %d",orderIcon);
            b=orderIcon;
                    }
        else if (user == 2) {
            iconEye.image = [UIImage imageNamed:@"y3.png"];
            iconEye1.image = [UIImage imageNamed:@"y3.png"];
            iconY =(NSArray*)@"y3.png";
            NSLog(@"%@",iconY);
            
//            NSLog(@"order %d",orderIcon);
            b=orderIcon;
        }
        else if (user == 3) {
            iconEye.image = [UIImage imageNamed:@"y4.png"];
            iconEye1.image = [UIImage imageNamed:@"y4.png"];
            iconY =(NSArray*)@"y4.png";
            NSLog(@"%@",iconY);
 
//            NSLog(@"order %d",orderIcon);
            b=orderIcon;
        }
        else if (user == 4) {
            iconEye.image = [UIImage imageNamed:@"y5.png"];
            iconEye1.image = [UIImage imageNamed:@"y5.png"];
            iconY =(NSArray*)@"y5.png";
            NSLog(@"%@",iconY);
            
//            NSLog(@"order %d",orderIcon);
            b=orderIcon;
        }
        
    }
    
    if (segMenu.selectedSegmentIndex==2) {
        NSLog(@"icon ear e%ld",(long)segIcon.selectedSegmentIndex);
        NSInteger user = [segIcon selectedSegmentIndex];
       
        if (user == 0) {
            
            iconEar.image = [UIImage imageNamed:@"e-1.png"];
            iconEar1.image = [UIImage imageNamed:@"e-1.png"];
            iconE = (NSArray*)@"e-1.png";
             NSLog(@"%@",iconE);
            
//            NSLog(@"order %d",orderIcon);
            c=orderIcon;
        }
        else if (user == 1) {
            iconEar.image = [UIImage imageNamed:@"e-2.png"];
            iconEar1.image = [UIImage imageNamed:@"e-2.png"];
            iconE = (NSArray*)@"e-2.png";
             NSLog(@"%@",iconE);
            
 //           NSLog(@"order %d",orderIcon);
            c=orderIcon;
        }
        else if (user == 2) {
            iconEar.image = [UIImage imageNamed:@"e-3.png"];
            iconEar1.image = [UIImage imageNamed:@"e-3.png"];
            iconE = (NSArray*)@"e-3.png";
             NSLog(@"%@",iconE);
            
//            NSLog(@"order %d",orderIcon);
            c=orderIcon;
        }
        else if (user == 3) {
            iconEar.image = [UIImage imageNamed:@"e-4.png"];
            iconEar1.image = [UIImage imageNamed:@"e-4.png"];
            iconE = (NSArray*)@"e-4.png";
             NSLog(@"%@",iconE);
            
//            NSLog(@"order %d",orderIcon);
            c=orderIcon;
        }
        else if (user == 4) {
            iconEar.image = [UIImage imageNamed:@"e-5.png"];
            iconEar1.image = [UIImage imageNamed:@"e-5.png"];
            iconE = (NSArray*)@"e-5.png";
             NSLog(@"%@",iconE);
            
//            NSLog(@"order %d",orderIcon);
            c=orderIcon;
        }
    
    }
    
    if (segMenu.selectedSegmentIndex==3) {
        NSLog(@"icon nose n%ld",(long)segIcon.selectedSegmentIndex);
        NSInteger user = [segIcon selectedSegmentIndex];
        
        if (user == 0) {
            iconNose.image = [UIImage imageNamed:@"n1.png"];
            iconN = (NSArray*)@"n1.png";
            NSLog(@"%@",iconN);
            
//            NSLog(@"order %d",orderIcon);
            d=orderIcon;
        }
        else if (user == 1) {
            iconNose.image = [UIImage imageNamed:@"n2.png"];
            iconN = (NSArray*)@"n2.png";
            NSLog(@"%@",iconN);
            
//            NSLog(@"order %d",orderIcon);
            d=orderIcon;
        }
        else if (user == 2) {
            iconNose.image = [UIImage imageNamed:@"n3.png"];
            iconN = (NSArray*)@"n3.png";
            NSLog(@"%@",iconN);
            
//            NSLog(@"order %d",orderIcon);
            d=orderIcon;
        }
        else if (user == 3) {
            iconNose.image = [UIImage imageNamed:@"n4.png"];
            iconN = (NSArray*)@"n4.png";
            NSLog(@"%@",iconN);
            
//            NSLog(@"order %d",orderIcon);
            d=orderIcon;
        }
        else if (user == 4) {
            iconNose.image = [UIImage imageNamed:@"n5.png"];
            iconN = (NSArray*)@"n5.png";
            NSLog(@"%@",iconN);
            
//            NSLog(@"order %d",orderIcon);
            d=orderIcon;
        }
        
    }
    
    if (segMenu.selectedSegmentIndex==4) {
        NSLog(@"icon mouth m%ld",(long)segIcon.selectedSegmentIndex);
        NSInteger user = [segIcon selectedSegmentIndex];
        
        if (user == 4) {
                iconMouth.image = [UIImage imageNamed:@"m5.png"];
                iconM = (NSArray*)@"m5.png";
                NSLog(@"%@",iconM);
            f=orderIcon;
            
//            NSLog(@"order %d",orderIcon);
        
                
            }
        else
            if (user == 0) {
            iconMouth.image = [UIImage imageNamed:@"m1.png"];
            iconM = (NSArray*)@"m1.png";
            NSLog(@"%@",iconM);
                
                
//                NSLog(@"order %d",orderIcon);
            f=orderIcon;
        }
        else
            if (user == 1) {
            iconMouth.image = [UIImage imageNamed:@"m2.png"];
            iconM =(NSArray*) @"m2.png";
            NSLog(@"%@",iconM);
                
                
//                NSLog(@"order %d",orderIcon);
            f=orderIcon;
        }
        else
            if (user == 2) {
            iconMouth.image = [UIImage imageNamed:@"m3.png"];
            iconM = (NSArray*)@"m3.png";
            NSLog(@"%@",iconM);
                
                
//                NSLog(@"order %d",orderIcon);
                f=orderIcon;
        }
        else
            if (user == 3) {
            iconMouth.image = [UIImage imageNamed:@"m4.png"];
            iconM = (NSArray*)@"m4.png";
            NSLog(@"%@",iconM);
                
                
//                NSLog(@"order %d",orderIcon);
                f=orderIcon;
            }
        
        
    }
    
   //ตรวจลำดับก่อนขหลัง
    NSLog(@"------------select icon----------checking register-----------");
    //NSTimer *t = (NSTimer*)Nil;
    
    h = iconH;
    NSLog(@"%d %@",a,h);
    
    y = iconY;
    NSLog(@"%d %@",b,y);
    
    e = iconE;
    NSLog(@"%d %@",c,e);
    
    n = iconN;
    NSLog(@"%d %@",d,n);
    
    m = iconM;
    NSLog(@"%d %@",f,m);
    
 
    if (a==4) {
        orders1=h;
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
    
}



//set alpha icon
- (IBAction)sliderChanged:(id)sender {
    float value = [sliderObj value];
    [iconHair setAlpha:value];
    [iconEar setAlpha:value];
    [iconEar1 setAlpha:value];
    [iconEye setAlpha:value];
    [iconEye1 setAlpha:value];
    [iconNose setAlpha:value];
    [iconMouth setAlpha:value];
    [FaceImageR setAlpha:value];
    
}


//check condition  5   icon
-(IBAction) CheckSubmit:(id)sender
{
    
    
    if (h&&y&&e&&n&&m != NULL) {
        NSLog(@"success   %@   %@   %@  %@  %@", h,y,e,n,m);
    
        
        NSDictionary *item = @{@"name":tN,
                               @"username":tU,
                               @"email": tM,
                               @"tel":tTel,
                               @"iface":tF,
                               @"icon1":h,
                               @"icon2":y,
                               @"icon3":e,
                               @"icon4":n,
                               @"icon5":m,
                               @"order1":orders1,
                               @"order2":orders2,
                               @"order3":orders3,
                               @"order4":orders4,
                               @"order5":orders5
                               
                               };
        NSLog(@"saved!!!!!  %@",item);
        //บันทึกข้อมูลทั้งหมด
        [self.memberService addItem:item completion:^
         
         {   UIAlertView *av =
             [[UIAlertView alloc]
              initWithTitle:@"password Success"
              message:@"Register Data Successfully."
              delegate:nil
              cancelButtonTitle:@"OK"
              otherButtonTitles:nil
              
              ];
             [av show];
         }];
        

    }else
    {
        NSLog(@"password not success ");
        
        UIAlertView *av =
        [[UIAlertView alloc]
         initWithTitle:@"password incomplete"
         message:@"**กรุณาใส่ไอคอนให้ครบ 5 ไอคอน กรุณากลับหน้า Home"
         delegate:nil
         cancelButtonTitle:@"ลงทะเบียนใหม่"
         otherButtonTitles:nil
         ];
        [av show];
    }

    }

// refresh ข้อมูลใหม่หมด   นอกนั้นเหมือน LoginIconView....
-(IBAction)btnRef:(id)sender
{
    //[self performSegueWithIdentifier:@"ref" sender:sender];
    UIAlertView *av =
    [[UIAlertView alloc]
     initWithTitle:@"re-Register"
     message:@"กรุณากรอกข้อมูลใหม่ คะ ^^"
     delegate:nil
     cancelButtonTitle:@"OK"
     otherButtonTitles:nil
     ];
    [av show];
    
}




-(IBAction) btnCancel
{
    
}

@end
