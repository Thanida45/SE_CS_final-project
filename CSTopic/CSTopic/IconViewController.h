//
//  IconViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/4/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IconViewController : UIViewController
{
    IBOutlet UISlider *sliderObj;
    NSInteger *a;
    NSInteger *b;
    NSInteger *c;
    NSInteger *d;
    NSInteger *f;
    NSInteger *order;
}
//ใส่ข้อมูล ส่วนตัว
@property (nonatomic,strong) NSArray *tF;
@property (nonatomic,strong) NSArray *tN;
@property (nonatomic,strong) NSArray *tU;
@property (nonatomic,strong) NSArray *tM;
@property (nonatomic,strong) NSArray *tTel;
//รับข้อมูลส่วนตัวจาก คลาสก่อนหน้า
@property (nonatomic,strong)    NSArray *goF;
@property (nonatomic, strong)   NSArray *goN;
@property (nonatomic, strong)   NSArray *goU;
@property (nonatomic, strong)   NSArray *goM;
@property (nonatomic, strong)   NSArray *goT;
//รับ face ที่เลือกมา
@property (strong, nonatomic) IBOutlet UIImageView *FaceImageR;
@property(strong,nonatomic) NSString *btnFaceReg;


//selected segment  and  icon  for your password
@property(nonatomic, retain) IBOutlet UISegmentedControl *segMenu;
@property(nonatomic, retain) IBOutlet UISegmentedControl *segIcon;
- (IBAction)segmentAction:(id)sender;
- (IBAction)iconAction:(id)sender;
@property(nonatomic, strong) IBOutlet UIImageView *iconHair;
@property(nonatomic, strong) IBOutlet UIImageView *iconEye;
@property(nonatomic, strong) IBOutlet UIImageView *iconEye1;
@property(nonatomic, strong) IBOutlet UIImageView *iconEar;
@property(nonatomic, strong) IBOutlet UIImageView *iconEar1;
@property(nonatomic, strong) IBOutlet UIImageView *iconNose;
@property(nonatomic, strong) IBOutlet UIImageView *iconMouth;

//ปรับความสว่างของ password
- (IBAction)sliderChanged:(id)sender;


//re-create password
-(IBAction) btnRef:(id)sender;


//check condition
-(IBAction) CheckSubmit:(id)sender;

-(IBAction) btnCancel;

@end

