//
//  MyMemberService.m
//  CSTopic
//
//  Created by PANG .SE.CS@TU on 2/3/2557 BE.
//  Copyright (c) 2557 Thanida.SE.CS@TU. All rights reserved.
//

#import "MyMemberService.h"
#import <WindowsAzureMobileServices/WindowsAzureMobileServices.h>


@interface MyMemberService() <MSFilter>

@property (nonatomic, strong)   MSTable *table;
@property (nonatomic)           NSInteger busyCount;

@end

@implementation MyMemberService

@synthesize items;


+ (MyMemberService *)defaultService
{
    // Create a singleton instance of MyMemberService
    static MyMemberService* service;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        service = [[MyMemberService alloc] init];
    });
    
    return service;
}

-(MyMemberService *)init
{
    self = [super init];
    
    if (self)
    {
        // Initialize the Mobile Service client with your URL and key
        MSClient *client = [MSClient clientWithApplicationURLString:@"https://thaicreate.azure-mobile.net/"
                                                    applicationKey:@"kZjUAomOlQgZIgBNBSmZpXwElSetbo46"];
        
        // Add a Mobile Service filter to enable the busy indicator
        self.client = [client clientWithFilter:self];
        
        // Create an MSTable instance to allow us to work with the TodoItem table
        self.table = [_client tableWithName:@"MyMember"];
        
        self.items = [[NSMutableArray alloc] init];
        self.busyCount = 0;
    }
    
    return self;
}



-(void)addItem:(NSDictionary *)item completion:(QSCompletionBlock)completion
{
    // Insert the item into the TodoItem table and add to the items array on completion
    [self.table insert:item completion:^(NSDictionary *result, NSError *error)
     {
         [self logErrorIfNotNil:error];
         
         NSUInteger index = [items count];
         [(NSMutableArray *)items insertObject:result atIndex:index];
         
         // Let the caller know that we finished
         
         completion();
     }];
}


 
- (void)busy:(BOOL)busy
{
    // assumes always executes on UI thread
    if (busy)
    {
        if (self.busyCount == 0 && self.busyUpdate != nil)
        {
            self.busyUpdate(YES);
        }
        self.busyCount ++;
    }
    else
    {
        if (self.busyCount == 1 && self.busyUpdate != nil)
        {
            self.busyUpdate(FALSE);
        }
        self.busyCount--;
    }
}

- (void)logErrorIfNotNil:(NSError *) error
{
    if (error)
    {
        NSLog(@"ERROR %@", error);
    }
}


- (void)handleRequest:(NSURLRequest *)request
                 next:(MSFilterNextBlock)next
             response:(MSFilterResponseBlock)response
{
    // A wrapped response block that decrements the busy counter
    MSFilterResponseBlock wrappedResponse = ^(NSHTTPURLResponse *innerResponse, NSData *data, NSError *error)
    {
        [self busy:NO];
        response(innerResponse, data, error);
    };
    
    // Increment the busy counter before sending the request
    [self busy:YES];
    next(request, wrappedResponse);
}


-(void)checkLogin:(NSDictionary *)item completion:(QSCompletionBlock)completion
{
    // Create a predicate that finds items where username
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"username == %@",
                               [item objectForKey:@"username"]];
                               //[item objectForKey:@"pass"]];
    
    // Query the TodoItem table and update the items property with the results from the service
    [self.table readWithPredicate:predicate completion:^(NSArray *results, NSInteger totalCount, NSError *error)
     {
         [self logErrorIfNotNil:error];
         
         items = [results mutableCopy];
         
         // Let the caller know that we finished
         completion();
     }];
}

-(void)getUserInfo:(NSString *)sid completion:(QSCompletionBlock)completion
{
    // Create a predicate that finds items where username
    NSPredicate * predicate = [NSPredicate predicateWithFormat:sid];
    
    // Query the TodoItem table and update the items property with the results from the service
    [self.table readWithPredicate:predicate completion:^(NSArray *results, NSInteger totalCount, NSError *error)
     {
         [self logErrorIfNotNil:error];
         
         items = [results mutableCopy];
         
         // Let the caller know that we finished
         completion();
     }];
}

-(void)updateItem:(NSMutableDictionary *)mutable completion:(QSCompletionBlock)completion
{
    // Update the item in the TodoItem table and remove from the items array on completion
    [self.table update:mutable completion:^(NSDictionary *item, NSError *error) {
        [self logErrorIfNotNil:error];
        // Let the caller know that we have finished
        completion();
    }];
}


- (void)refreshDataOnSuccess:(QSCompletionBlock)completion
{
    // Query the TodoItem table and update the items property with the results from the service
    [self.table readWithCompletion:^(NSArray *results, NSInteger totalCount, NSError *error)
    {
        [self logErrorIfNotNil:error];
        items = [results mutableCopy];
        // Let the caller know that we finished
        completion();
    }];
}
@end
