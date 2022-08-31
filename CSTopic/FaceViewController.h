//
//  FaceViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/3/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FaceViewController : UIViewController


- (IBAction)seeStruct:(id)sender;


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

- (IBAction)btnCancel;
@property (nonatomic,strong) NSArray *texN;
@property (nonatomic,strong) NSArray *texU;
@property (nonatomic,strong) NSArray *texE;
@property (nonatomic,strong) NSArray *texTel;
@property (nonatomic, strong)   NSArray *name;
@property (nonatomic, strong)   NSArray *user;
@property (nonatomic, strong)   NSArray *mail;
@property (nonatomic, strong)   NSArray *tele;
//@property (strong, nonatomic) id sid;
@end
