//
//  Game02_Predict.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/22/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import "Game02_Predict.h"

@interface Game02_Predict ()

@end

@implementation Game02_Predict

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
    
    predict.text =@"คุณเป็นคนเฉลียวฉลาด ช่างพูด รักอิสระ หงุดหงิดง่าย มีความทะเยอทะยานในตนเอง ชอบอธิบาย ชอบสอน มีความสุขกับการสมาคม หรือกับครอบครัว บริวารที่จะส่งผล สร้างความร่ำรวยให้ชีวิต";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
