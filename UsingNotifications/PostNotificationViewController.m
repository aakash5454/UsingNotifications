//
//  FirstViewController.m
//  UsingNotifications
//
//  Created by Sky on 7/18/15.
//  Copyright (c) 2015 com.sky. All rights reserved.
//

#import "PostNotificationViewController.h"
#import "observerViewController.h"

@interface PostNotificationViewController ()

@end

@implementation PostNotificationViewController
- (IBAction)postNotificationButtonPressed:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"thisIsTheNotification" object:self];
    NSLog(@"All Notification Posted");
}

@end
