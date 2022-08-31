//
//  Game02ViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Game02ViewController.h"

@interface Game02ViewController ()

@end

@implementation Game02ViewController
@synthesize datelabel;
@synthesize Picker;
@synthesize daysData;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    daysData = [[NSArray alloc] initWithObjects:@"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", @"Sunday", nil];
   
 
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*) pickerView
{
    return 1;
}


-(NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [daysData count];
    
}

-(NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [daysData objectAtIndex:row];
}


-(void)pickerView:(UIPickerView*)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *result = [[NSString alloc] initWithFormat:@"%@" , [daysData objectAtIndex:row]];
    datelabel.text = result;
}


- (IBAction)btnCancel{}

- (IBAction)btnNext{}



@end
