//
//  Game01ViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import "Game01ViewController.h"

@interface Game01ViewController ()

@end

@implementation Game01ViewController
@synthesize datePicker;
@synthesize datelabel;


#pragma mark – View lifecycle
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //datelabel = [[UILabel alloc] init];
    
    datelabel.backgroundColor = [UIColor clearColor];
    datelabel.textColor = [UIColor grayColor];
    datelabel.font = [UIFont fontWithName:@"Verdana-Bold" size: 18.0];
    
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateStyle = NSDateFormatterMediumStyle;
    datelabel.text = [NSString stringWithFormat:@"%@",
                      [df stringFromDate:[NSDate date]]];
    [self.view addSubview:datelabel];
    
    
    //datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 250, 325, 300)];
    datePicker.datePickerMode = UIDatePickerModeDate;
    datePicker.hidden = NO;
    datePicker.date = [NSDate date];
    
    [datePicker addTarget:self
                   action:@selector(LabelChange:)
         forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
    
}
- (void)LabelChange:(id)sender{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateStyle = NSDateFormatterMediumStyle;
    datelabel.text = [NSString stringWithFormat:@"%@",
                      [df stringFromDate:datePicker.date]];
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



- (IBAction)btnCancel{}

- (IBAction)btnNext{}




@end
