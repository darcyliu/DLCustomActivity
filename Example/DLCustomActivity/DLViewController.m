//
//  DLViewController.m
//  DLCustomActivity
//
//  Created by Darcy Liu on 11/24/2014.
//  Copyright (c) 2014 Darcy Liu. All rights reserved.
//

#import "DLViewController.h"
#import <DLCustomActivity/DLCustomActivity.h>

@interface DLViewController ()
@property (nonatomic,strong) UILabel *activityTitleLabel;
@end

@implementation DLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"DLCustomActivity";
    
    _activityTitleLabel = [[UILabel alloc] initWithFrame:self.view.bounds];
    _activityTitleLabel.text = @"DLCustomActivity";
    _activityTitleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_activityTitleLabel];
	
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(moreAction:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
- (void)moreAction:(id)sender
{
    __weak typeof(&*self) weakself = self;
    
    DLActionActivity *weixinSessionActivity = [[DLActionActivity alloc] initWithActivityTitle:@"WeChat" activityImageName:@"sns_icon_wechat"];
    weixinSessionActivity.canPerformActivityBlock = ^(DLCustomActivity *activity,NSArray *activityItems){
        return YES;
    };
    weixinSessionActivity.performActivityBlock = ^(DLCustomActivity *activity,NSArray *activityItems){
        weakself.activityTitleLabel.text = [NSString stringWithFormat:@"%@ selected.",activity.activityTitle];
        return YES;
    };
    
    DLShareActivity *weixinTimelineActivity = [[DLShareActivity alloc] initWithActivityTitle:@"WeChat Timeline" activityImageName:@"sns_icon_wechat_timeline"];
    weixinTimelineActivity.canPerformActivityBlock = ^(DLCustomActivity *activity,NSArray *activityItems){
        return YES;
    };
    weixinTimelineActivity.performActivityBlock = ^(DLCustomActivity *activity,NSArray *activityItems){
        weakself.activityTitleLabel.text = [NSString stringWithFormat:@"%@ selected.",activity.activityTitle];
        return YES;
    };
    
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[] applicationActivities:@[weixinSessionActivity,weixinTimelineActivity]];
    activityViewController.excludedActivityTypes = @[UIActivityTypePostToFacebook
                                                     ,UIActivityTypePostToTwitter
                                                     ,UIActivityTypePostToWeibo
                                                     ,UIActivityTypeMessage
                                                     ,UIActivityTypeMail
                                                     ,UIActivityTypePrint
                                                     ,UIActivityTypeCopyToPasteboard
                                                     ,UIActivityTypeAssignToContact
                                                     ,UIActivityTypeSaveToCameraRoll
                                                     #ifdef __IPHONE_7_0
                                                     ,UIActivityTypeAddToReadingList
                                                     ,UIActivityTypePostToFlickr
                                                     ,UIActivityTypePostToVimeo
                                                     ,UIActivityTypePostToTencentWeibo
                                                     ,UIActivityTypeAirDrop
                                                     #endif
                                                     ];
    activityViewController.completionHandler = ^(NSString *activityType, BOOL completed){
        NSLog(@"activityType: %@ %d",activityType,completed);
    };
    [self presentViewController:activityViewController animated:YES completion:NULL];
}

@end
