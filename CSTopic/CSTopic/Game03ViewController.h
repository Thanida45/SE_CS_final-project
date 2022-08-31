//
//  Game03ViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Game03ViewController : UIViewController
{
    
    UIPickerView *Picker;
    UILabel *rasee;
    NSArray *Data;
    
}

@property(nonatomic,retain) IBOutlet UIPickerView *Picker;
@property(nonatomic,retain) IBOutlet UILabel *rasee;
@property(nonatomic,retain) NSArray *Data;


- (IBAction)btnCancel;

- (IBAction)btnNext;


@end
