//
//  Game03ViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import "Game03ViewController.h"

@interface Game03ViewController ()

@end

@implementation Game03ViewController
@synthesize rasee;
@synthesize Picker;
@synthesize Data;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    Data = [[NSArray alloc] initWithObjects:@"มังกร", @"กุมภ์", @"มีน", @"เมษ", @"พฤษภ", @"เมถุน", @"กรกฎ", @"สิงห์" , @"กันย์" , @"ตุลย์" , @"พิจิก" ,@"ธนู" , nil];
    
    
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*) pickerView
{
    return 1;
}


-(NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [Data count];
    
}

-(NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [Data objectAtIndex:row];
}


-(void)pickerView:(UIPickerView*)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *result = [[NSString alloc] initWithFormat:@"%@" , [Data objectAtIndex:row]];
    rasee.text = result;
}


- (IBAction)btnCancel{}

- (IBAction)btnNext{}

@end
