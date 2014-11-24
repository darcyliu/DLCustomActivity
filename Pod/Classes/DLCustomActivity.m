//
//  DLCustomActivity.m
//  DLCustomActivity
//
//  Created by Darcy Liu on 8/3/14.
//  Copyright (c) 2014 Close To U. All rights reserved.
//

#import "DLCustomActivity.h"

@interface DLCustomActivity()
@end

@implementation DLCustomActivity
- (id)initWithActivityTitle:(NSString *)activityTitle activityImageName:(NSString *)activityImageName
{
    self = [super init];
    if (self) {
        _activityType = @"com.example.activity.custom";
        _activityTitle = activityTitle;
        _activityImageName = activityImageName;
    }
    return self;
}

- (void)dealloc
{
    _canPerformActivityBlock = nil;
    _performActivityBlock = nil;
    _prepareActivityItemsBlock = nil;
}

- (NSString *)activityType
{
    return _activityType;
}

- (NSString *)activityTitle
{
    return _activityTitle;
}

/* make activity icon image colorful*/
- (UIImage *)_activityImage
{
    return [self activityImage];
}

- (UIImage *)activityImage
{
    NSString *imageName = _activityImageName;
    if (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPad) {
        imageName = [NSString stringWithFormat:@"%@~iPad",_activityImageName];
    }
    return [UIImage imageNamed:imageName];
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems
{
    /*
    for (id activityItem in activityItems) {
        
    }*/
    
    if (_canPerformActivityBlock) {
        return _canPerformActivityBlock(self,activityItems);
    }
    return NO;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems
{
    NSLog(@"prepareWithActivityItems");
    if (_prepareActivityItemsBlock) {
        _prepareActivityItemsBlock(self,activityItems);
    }
}
 
- (void)performActivity
{
    BOOL completed = NO;
    NSLog(@"performActivity");
    if (_performActivityBlock) {
        completed = _performActivityBlock(self,_processedActivityItems);
    }
    [self activityDidFinish:completed];
}

/*
- (void)activityDidFinish:(BOOL)completed
{
    [super activityDidFinish:completed];
}
*/

- (UIViewController *)activityViewController
{
    return _activityViewController;
}

@end

@implementation DLActionActivity
+ (UIActivityCategory)activityCategory
{
    return UIActivityCategoryAction;
}
@end

@implementation DLShareActivity
+ (UIActivityCategory)activityCategory
{
    return UIActivityCategoryShare;
}
@end
