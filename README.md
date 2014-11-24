# DLCustomActivity

[![CI Status](http://img.shields.io/travis/darcyliu/DLCustomActivity.svg?style=flat)](https://travis-ci.org/darcyliu/DLCustomActivity)
[![Version](https://img.shields.io/cocoapods/v/DLCustomActivity.svg?style=flat)](http://cocoadocs.org/docsets/DLCustomActivity)
[![License](https://img.shields.io/cocoapods/l/DLCustomActivity.svg?style=flat)](http://cocoadocs.org/docsets/DLCustomActivity)
[![Platform](https://img.shields.io/cocoapods/p/DLCustomActivity.svg?style=flat)](http://cocoadocs.org/docsets/DLCustomActivity)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

DLCustomActivity is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "DLCustomActivity"
    

## Sample Code

### Import *DLCustomActivity*

    #import <DLCustomActivity/DLCustomActivity.h>
    

### For Action Activity

    DLActionActivity *actionActivity = [[DLActionActivity alloc] initWithActivityTitle:@"Action Title" activityImageName:@"Icon"];
    actionActivity.canPerformActivityBlock = ^(DLCustomActivity *activity,NSArray *activityItems){
        return YES;
    };
    actionActivity.performActivityBlock = ^(DLCustomActivity *activity,NSArray *activityItems){
        return YES;
    };
        
### For Share Activity

    DLShareActivity *shareActivity = [[DLShareActivity alloc] initWithActivityTitle:@"Share Title" activityImageName:@"Icon"];
    shareActivity.canPerformActivityBlock = ^(DLCustomActivity *activity,NSArray *activityItems){
        return YES;
    };
    shareActivity.performActivityBlock = ^(DLCustomActivity *activity,NSArray *activityItems){
        return YES;
    };
        
### Present UIActivityViewController


    NSString *text = @"Share Text";
    NSURL *url = [NSURL URLWithString:@"http://www.example.com"];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[text,url] applicationActivities:@[actionActivity,shareActivity]];
    [self presentViewController:activityViewController animated:YES completion:NULL];


## Author

Darcy Liu, ![Email](http://ioio.name/github-email.png)

## License

DLCustomActivity is available under the MIT license. See the LICENSE file for more info.

