//
//  NotificationViewController.m
//  NotificationCustomView
//
//  Created by Jonathan Edgar on 2/10/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "NotificationViewController.h"


@interface NotificationViewController ()

@end

@implementation NotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   self.notificationView = [[UIView alloc]initWithFrame:CGRectMake(200, 200, 150, 50)];
   [self.view addSubview:self.notificationView];
 
    UIView *plainView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 415, 745)];
    plainView.backgroundColor = [UIColor colorWithRed:0/255.0 green:155/255.0 blue:200/255.0 alpha:1];
    [self.view addSubview:plainView];
   
  
    self.notificationView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 315, 745)];
    self.notificationView.backgroundColor = [UIColor colorWithRed:34/255.0 green:36/255.0 blue:70/255.0 alpha:.7];
    [self.view addSubview:self.notificationView];
     
    UISwipeGestureRecognizer *swipeUpGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeUp:)];
    swipeUpGesture.direction = UISwipeGestureRecognizerDirectionUp;
  //  [NotificationView addGestureRecognizer: swipeUpGesture];
     
  
    UISwipeGestureRecognizer *swipeDownGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeDown:)];
    swipeDownGesture.direction = UISwipeGestureRecognizerDirectionDown;
    [plainView addGestureRecognizer:swipeDownGesture];
}


-(void) swipeUp:(UISwipeGestureRecognizer *) recognizer {
    
    UIView *notificationView = recognizer.view;
    
    [UIView animateWithDuration:1.0 animations:^{
        notificationView.frame = CGRectMake(0, -745, 415, 745);
    } completion:nil];
    
}


-(void) swipeDown:(UISwipeGestureRecognizer *) recognizer {
    self.notificationView = recognizer.view;
    
    [UIView animateWithDuration:1.0 animations:^{
        self.notificationView.frame = CGRectMake(0, 0, 415, 745);
    } completion:nil];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}


@end
