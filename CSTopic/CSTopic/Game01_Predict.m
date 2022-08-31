//
//  Game01_Predict.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/22/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import "Game01_Predict.h"

@interface Game01_Predict ()

@end

@implementation Game01_Predict

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
    { predict.text =@"คุณเป็นคนเงียบ จะช่างพูดเมื่อเป็นเรื่องที่ชอบ เป็นคนรักอิสระ โกรธง่ายหายเร็ว มีความทะเยอทะยานในตนเอง ชอบท่องเที่ยว ชอบธรรมชาติ มักรักสันโดษ มีความสุขกับเพื่อนสนิทหรือครอบครัว คนรู้ใจ จะเป็นบริวารที่ส่งผล สร้างความร่ำรวยให้ชีวิต";}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
