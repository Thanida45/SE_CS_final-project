//
//  FaceViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/3/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//
#import "RegFormViewController.h"
#import "MyMemberService.h"
#import "IconViewController.h"
#import "FaceViewController.h"
#import <UIKit/UIKit.h>

@interface FaceViewController ()
//IBOutlet UITextField *ext;
// Private properties
@property (strong, nonatomic)   MyMemberService   *memberService;
@end

@implementation FaceViewController
@synthesize name , user, mail , tele;
@synthesize texN , texE , texTel, texU;

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
    // Start Service
    self.memberService = [MyMemberService defaultService];
    
    texN = name;
    texU = user;
    texE =mail;
    texTel =tele;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction) seeStruct:(id)sender
{
    [self performSegueWithIdentifier:@"line1" sender:sender];

}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if([segue.identifier isEqualToString:@"line1"]){
        IconViewController *p = (IconViewController*)segue.destinationViewController;
        p.btnFaceReg = ((UIButton*)sender).titleLabel.text;
        //ext = p.btnFaceReg;
        p.goN = texN;
        p.goU = texU;
        p.goM = texE;
        p.goT = texTel;
        {
            //รับข้อมูลที่กรอกไว้ก่อนด้านบน  ส่งไปอีกอยู่ในเมททอธ นี้
            NSDictionary *item = @{@"name":texN,
                                   @"username":texU,
                                   @"email": texE,
                                   @"tel":texTel,
                                   @"iface":((UIButton*)sender).titleLabel.text
                                   };
            p.goF =(NSArray*)((UIButton*)sender).titleLabel.text;
            NSLog(@"%@",item);

//DB//
/*  insert to DB
            [self.memberService addItem:item completion:^
             
             {  UIAlertView *av =
                 [[UIAlertView alloc]
                  initWithTitle:@"face Success"
                  message:@"Register Data faceee."
                  delegate:nil
                  cancelButtonTitle:@"OK"
                  otherButtonTitles:nil
                  ];
                 [av show];
             }];  */

        }

}
}

-(IBAction) btnCancel
{


}
@end
