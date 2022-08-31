//
//  MyMemberService.h
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/3/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//


#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>
#import <Foundation/Foundation.h>


typedef void (^QSCompletionBlock) ();
typedef void (^QSBusyUpdateBlock) (BOOL busy);


@interface MyMemberService : NSObject

@property (nonatomic, strong)   NSArray *items;
@property (nonatomic, strong)   MSClient *client;
@property (nonatomic, copy)     QSBusyUpdateBlock busyUpdate;


+ (MyMemberService *)defaultService;


- (void)addItem:(NSDictionary *)item
    completion:(QSCompletionBlock)completion;

- (void)handleRequest:(NSURLRequest *)request
                 next:(MSFilterNextBlock)next
             response:(MSFilterResponseBlock)response;


- (void)updateItem:(NSMutableDictionary *)item
completion:(QSCompletionBlock)completion;

- (void)refreshDataOnSuccess:(QSCompletionBlock)completion;

- (void)checkLogin:(NSDictionary *)item
            completion:(QSCompletionBlock)completion;

- (void)getUserInfo:(NSString *)sid
         completion:(QSCompletionBlock)completion;


@end