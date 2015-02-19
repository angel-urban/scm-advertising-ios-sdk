//
//  PAOWebView.h
//  SDK-iosV4
//
//  Created by angel.urban on 13/2/15.
//  Copyright (c) 2015 SCMSpain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "SDK_iosV4-Swift.h"

@interface PAOWebView : NSObject <UIWebViewDelegate>

@property UIWebView *Publicidad;


-(UIWebView *)RetornarBanner;

@end
