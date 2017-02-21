//
//  NotificationView.m
//  NotificationCustomView
//
//  Created by Jonathan Edgar on 2/10/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "NotificationView.h"

@implementation NotificationView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    UIView *noticationView =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 50)];
    noticationView.backgroundColor = [UIColor colorWithRed:34/255.0 green:56/255.0 blue:135/255.0 alpha:1.0];
    
    
    return self;
}
@end
