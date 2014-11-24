//
//  DLCustomActivity.h
//  DLCustomActivity
//
//  Created by Darcy Liu on 8/3/14.
//  Copyright (c) 2014 Close To U. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DLCustomActivity;

typedef BOOL (^DLCustomActivityCanPerformActivityBlock)(DLCustomActivity *activity,NSArray *activityItems);
typedef BOOL (^DLCustomActivityBlock)(DLCustomActivity *activity,NSArray *activityItems);

@interface DLCustomActivity : UIActivity
@property (nonatomic,strong) NSString *activityType;
@property (nonatomic,strong) NSString *activityTitle;
@property (nonatomic,strong) NSString *activityImageName;
@property (nonatomic,strong) UIViewController *activityViewController;
@property (nonatomic,strong) NSArray *processedActivityItems;
@property (nonatomic,copy) DLCustomActivityCanPerformActivityBlock canPerformActivityBlock;
@property (nonatomic,copy) DLCustomActivityBlock performActivityBlock;
@property (nonatomic,copy) DLCustomActivityBlock prepareActivityItemsBlock;

- (id)initWithActivityTitle:(NSString *)activityTitle
             activityImageName:(NSString *)activityImageName;
@end

@interface DLActionActivity : DLCustomActivity

@end

@interface DLShareActivity : DLCustomActivity

@end

