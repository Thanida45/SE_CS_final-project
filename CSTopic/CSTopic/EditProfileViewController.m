//
//  EditProfileViewController.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/12/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//
#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import "EditProfileViewController.h"
#import "MyMemberService.h"
#import "ProfileViewController.h"
#import "LoginFormViewController.h"

@interface EditProfileViewController ()
// Private properties
@property (strong, nonatomic)   MyMemberService   *memberService;


@end

@implementation EditProfileViewController
@synthesize upItems;

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
    // Do any additional setup after loading the view from its nib.
    
    // Start Service
    self.memberService = [MyMemberService defaultService];
    
    NSString *wid = [NSString stringWithFormat:@"id = %@",[self.sid description]];
    
    [self.memberService getUserInfo:wid completion:^
     {
         if(_memberService.items.count > 0)
         {
             NSDictionary *item = [self.memberService.items objectAtIndex:0];
             
             txtName.text = [item objectForKey:@"name"];
             txtUsername.text = [item objectForKey:@"username"];
             txtEmail.text = [item objectForKey:@"email"];
             txtTelephone.text = [item objectForKey:@"tel"];
             
         }
         else
         {
             UIAlertView *av =
             [[UIAlertView alloc]
              initWithTitle:@"Get Data"
              message:@"Not found data."
              delegate:nil
              cancelButtonTitle:@"OK"
              otherButtonTitles:nil
              ];
             [av show];
         }
     }];
    
    
    // Tap Gesture for Hide Keyboard
    UITapGestureRecognizer *oneTapGesture = [[UITapGestureRecognizer alloc]
                                             initWithTarget: self
                                             action: @selector(hideKeyboard:)];
    [oneTapGesture setNumberOfTouchesRequired:1];
    [[self view] addGestureRecognizer:oneTapGesture];
}

// Event Gesture for Hide Keyboard
- (void)hideKeyboard:(UITapGestureRecognizer *)sender {
//    [txtPassword resignFirstResponder];
    [txtUsername resignFirstResponder];
    [txtName resignFirstResponder];
    [txtEmail resignFirstResponder];
    [txtTelephone resignFirstResponder];
}

- (IBAction)save:(id)sender {
    
    // Find item that was commited for editing (update)
    NSDictionary *item = [self.memberService.items objectAtIndex:0];
    
    NSMutableArray *mutableItems = (NSMutableArray *) upItems;
    
    // Set the item to be complete (we need a mutable copy)
    NSMutableDictionary *mutable = [item mutableCopy];
    [mutable setObject:txtName.text forKey:@"name"];
    [mutable setObject:txtUsername.text forKey:@"username"];
    [mutable setObject:txtEmail.text forKey:@"email"];
    [mutable setObject:txtTelephone.text forKey:@"tel"];
    
    // Replace the original in the items array
    NSUInteger index = [upItems indexOfObjectIdenticalTo:item];
    [mutableItems replaceObjectAtIndex:index withObject:mutable];
    
    // Ask the todoService to set the item's complete value to YES, and remove the row if successful
    [self.memberService updateItem:mutable completion:^(NSUInteger index)
     {
         UIAlertView *av =
         [[UIAlertView alloc]
          initWithTitle:@"Update Data"
          message:@"Update Data Successfully."
          delegate: self
          cancelButtonTitle:@"OK"
          otherButtonTitles:nil
          ];
         [av show];
         
         //ViewController *view2 = [[[ViewController alloc] initWithNibName:nil bundle:nil] autorelease];
         //[self presentViewController:view2 animated:YES completion:NULL];
         
     }];
    
}

// Clock alert button
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if(buttonIndex == 0)
    {
        ProfileViewController *view2 = [[ProfileViewController alloc] initWithNibName:nil bundle:nil];
        [self presentViewController:view2 animated:YES completion:NULL];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)btnSave:(id)sender{}

-(IBAction) btnCancel{}

@end
