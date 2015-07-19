//
//  observerViewController.m
//  UsingNotifications
//
//  Created by Sky on 7/18/15.
//  Copyright (c) 2015 com.sky. All rights reserved.
//

#import "observerViewController.h"

#import "secondObserverViewController.h"
#import "thirdObserverViewController.h"
#import "fourthObserverViewController.h"
#import "fifthObserverViewController.h"


@interface observerViewController ()
@end

@implementation observerViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        [self registerForNotification];
    }
    return self;
}


-(void)registerForNotification
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(thisIsTheNotification:) name:@"thisIsTheNotification" object:nil];
}


-(void)thisIsTheNotification:(NSNotificationCenter*)notification
{
    NSLog(@"This is a notification from observerViewController");
}

- (void)dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
