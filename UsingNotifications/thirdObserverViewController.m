//
//  thirdObserverViewController.m
//  UsingNotifications
//
//  Created by Sky on 7/18/15.
//  Copyright (c) 2015 com.sky. All rights reserved.
//

#import "thirdObserverViewController.h"

@interface thirdObserverViewController ()

@end

@implementation thirdObserverViewController

-(void)thisIsTheNotification:(NSNotificationCenter*)notification
{
    NSLog(@"Notification received to 3rd VC");
}


@end
