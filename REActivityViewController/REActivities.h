//
// REActivities.h
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

// always enabled
#import "REMailActivity.h"
#import "REPrintActivity.h"
#import "RECopyActivity.h"
#import "REMapsActivity.h"
#import "RESaveToCameraRollActivity.h"

#ifdef REACTIVITYVIEWCONTROLLER_HAS_FACEBOOK
#import "REFacebookActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_TWITTER
#import "RETwitterActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_MESSAGE
#import "REMessageActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_SAFARI
#import "RESafariActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_CHROME
#import "REChromeActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_TUMBLR
#import "RETumblrActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_VKONTAKTE
#import "REVKActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_INSTAPAPER
#import "REInstapaperActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_POCKET
#import "REPocketActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_READABILITY
#import "REReadabilityActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_DIIGO
#import "REDiigoActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_KIPPT
#import "REKipptActivity.h"
#endif
#ifdef REACTIVITYVIEWCONTROLLER_HAS_SINAWEIBO
#import "RESinaWeiboActivity.h"
#endif
