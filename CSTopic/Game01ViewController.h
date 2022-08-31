//
//  Game01ViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Game01ViewController : UIViewController
{
    
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UILabel *datelabel;
    
}

@property(nonatomic,retain) UIDatePicker *datePicker;
@property(nonatomic,retain) IBOutlet UILabel *datelabel;

- (IBAction)btnCancel;

- (IBAction)btnNext;

@end
