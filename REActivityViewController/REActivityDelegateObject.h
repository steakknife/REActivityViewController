//
// REActivityDelegateObject.h
// REActivityViewController
//
// Copyright (c) 2013 Roman Efimov (https://github.com/romaonthego)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

#import "REConfig.h"

#import <Foundation/Foundation.h>
#if defined(COCOAPODS_POD_AVAILABLE_REActivityViewController_Activity_Message ) || defined(COCOAPODS_POD_AVAILABLE_REActivityViewController_Activity_Mail)
#import <MessageUI/MessageUI.h>
#endif
#ifdef COCOAPODS_POD_AVAILABLE_REActivityViewController_Activity_Mail
#import <MessageUI/MFMailComposeViewController.h>
#endif

@interface REActivityDelegateObject : NSObject <
#ifdef COCOAPODS_POD_AVAILABLE_REActivityViewController_Activity_Message
    MFMessageComposeViewControllerDelegate,
#endif

#ifdef COCOAPODS_POD_AVAILABLE_REActivityViewController_Activity_Mail
    MFMailComposeViewControllerDelegate,
#endif
    UINavigationControllerDelegate>

@property (strong, nonatomic) UIViewController *controller;

+ (REActivityDelegateObject *)sharedObject;

@end
