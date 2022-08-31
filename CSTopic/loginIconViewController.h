//
//  loginIconViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginIconViewController : UIViewController
{
    IBOutlet UISlider *sliderObj;
    NSInteger *a;
    NSInteger *b;
    NSInteger *c;
    NSInteger *d;
    NSInteger *f;

}
//slider alpha
- (IBAction)sliderChanged:(id)sender;


//recreive data;
@property (strong, nonatomic) IBOutlet UIImageView *FaceImageLogin;
@property (strong,nonatomic) NSString *btnFaceLogin;
@property (strong,nonatomic) NSString *facelog;
@property (strong,nonatomic) NSString *face;
@property (strong, nonatomic) IBOutlet UILabel *Uuser;

@property (strong, nonatomic) NSString *usr;
@property (strong, nonatomic) NSString *ddd;
@property (nonatomic) NSInteger *num;

@property (strong, nonatomic) NSString *orders000;
@property (strong, nonatomic) NSString *orders001;
@property (strong, nonatomic) NSString *orders002;
@property (strong, nonatomic) NSString *orders003;
@property (strong, nonatomic) NSString *orders004;
@property (strong, nonatomic) NSString *orders005;
@property (strong, nonatomic) UILabel *info01;
@property (strong, nonatomic) UILabel *info02;
@property (strong, nonatomic) UILabel *info03;



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;



///select segment
@property(nonatomic, retain) IBOutlet UISegmentedControl *segMenuLog;
@property(nonatomic, retain) IBOutlet UISegmentedControl *segIconLog;
- (IBAction)segmentAction:(id)sender;
- (IBAction)iconAction:(id)sender;
@property(nonatomic, strong) IBOutlet UIImageView *iconHairLog;
@property(nonatomic, strong) IBOutlet UIImageView *iconEyeLog;
@property(nonatomic, strong) IBOutlet UIImageView *iconEye1Log;
@property(nonatomic, strong) IBOutlet UIImageView *iconEarLog;
@property(nonatomic, strong) IBOutlet UIImageView *iconEar1Log;
@property(nonatomic, strong) IBOutlet UIImageView *iconNoseLog;
@property(nonatomic, strong) IBOutlet UIImageView *iconMouthLog;




//check icon OK or Not?

-(IBAction) CheckSubmit:(id)sender;

@property (strong, nonatomic)NSString *id01;
@property (strong, nonatomic)NSString *name01;
@property (strong, nonatomic)NSString *username01;
@property (strong, nonatomic)NSString *email01;
@property (strong, nonatomic)NSString *telephone01;
@property (strong, nonatomic)NSString *mail01;
@property (strong, nonatomic)NSString *face01;
@property (strong, nonatomic)NSString *or01;
@property (strong, nonatomic)NSString *or02;
@property (strong, nonatomic)NSString *or03;
@property (strong, nonatomic)NSString *or04;
@property (strong, nonatomic)NSString *or05;

-(IBAction) btnCancel;

@end
