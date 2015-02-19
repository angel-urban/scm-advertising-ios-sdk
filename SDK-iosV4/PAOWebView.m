//
//  PAOWebView.m
//  SDK-iosV4
//
//  Created by angel.urban on 13/2/15.
//  Copyright (c) 2015 SCMSpain. All rights reserved.
//
//Clase para crear el Objeto UIWebView en Objetive-C

#import "PAOWebView.h"
#import "SDK_iosV4-Swift.h" //<-Importacion del archivo de cabecera de Swift


@implementation PAOWebView


-(id)init {
    self = [super init];
    if (self) {
        self.Publicidad = [[UIWebView alloc]initWithFrame:[[UIScreen mainScreen]applicationFrame]];
    }
    return self;
}

-(UIWebView *)RetornarBanner {
    
    [self.Publicidad loadRequest:self.loadURL];
    self.Publicidad.delegate = self;
    
    
    return self.Publicidad;
}

-(NSURLRequest *)loadURL
{
    ViewPAO *ViewPao = [ViewPAO new];
    NSURLRequest *request = [ViewPao loadURL];
    
    return request;

}

#pragma mark - Web View Delegate Methods


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    if ( navigationType == UIWebViewNavigationTypeLinkClicked ) {
        [[UIApplication sharedApplication] openURL:[request URL]];
        return NO;
    }
    
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
    CGRect frame = self.Publicidad.frame;
    frame.size.height = 1;
    self.Publicidad.frame = frame;
    CGSize fittingSize = [self.Publicidad sizeThatFits:CGSizeZero];
    frame.size = fittingSize;
    self.Publicidad.frame = frame;
    
    NSLog(@"size: %f, %f", fittingSize.width, fittingSize.height);
    
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    
}

@end
