//
//  secondObserverViewController.m
//  UsingNotifications
//
//  Created by Sky on 7/18/15.
//  Copyright (c) 2015 com.sky. All rights reserved.
//

#import "secondObserverViewController.h"

@interface secondObserverViewController ()

@end

@implementation secondObserverViewController


-(void)thisIsTheNotification:(NSNotificationCenter*)notification
{
    NSLog(@"Notification received to 2nd VC");
}

@end
