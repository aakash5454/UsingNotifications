//
//  fourthObserverViewController.m
//  UsingNotifications
//
//  Created by Sky on 7/18/15.
//  Copyright (c) 2015 com.sky. All rights reserved.
//

#import "fourthObserverViewController.h"

@interface fourthObserverViewController ()

@end

@implementation fourthObserverViewController

-(void)thisIsTheNotification:(NSNotificationCenter*)notification
{
    NSLog(@"Notification received to 4th VC");
}

@end
