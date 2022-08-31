//
//  Game02ViewController.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Game02ViewController : UIViewController
{
    
    UIPickerView *Picker;
    UILabel *datelabel;
    NSArray *daysData;
    
}

@property(nonatomic,retain) IBOutlet UIPickerView *Picker;
@property(nonatomic,retain) IBOutlet UILabel *datelabel;
@property(nonatomic,retain) NSArray *daysData;

- (IBAction)btnCancel;

- (IBAction)btnNext;


@end
