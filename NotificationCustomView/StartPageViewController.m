//
//  StartPageViewController.m
//  NotificationCustomView
//
//  Created by Jonathan Edgar on 2/21/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "StartPageViewController.h"

@interface StartPageViewController ()

@end

@implementation StartPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NotificationView *notificationView = [[NotificationView alloc]init];
    
    //slideDownView =  [[UIView alloc]init];
    
  //  notificationView.slideDownView = [[UIView alloc]init];
    UIView *slideDownView = notificationView.slideDownView;
    
    notificationView.center = self.view.center;
    [self.view addSubview: notificationView];


}





@end
