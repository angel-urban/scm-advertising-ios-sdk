//
//  WebViewPAO.swift
//  SDK-iosV4
//
//  Created by angel.urban on 16/2/15.
//  Copyright (c) 2015 SCMSpain. All rights reserved.
//
//Clase para crear el Objeto UIWebView con Swift

import Foundation
import UIKit

@objc class WebViewPAO: NSObject, UIWebViewDelegate {
    
    
    var Publicidad:UIWebView!
    
    convenience init(frame:CGRect) {
        self.init()
        Publicidad.frame = frame
    }
    
    override init() {
        super.init()
        
        Publicidad = UIWebView(frame: (UIScreen.mainScreen().applicationFrame))
    }
    
    
    
    func RetornarPublicidad ()->UIWebView
    {
        
        Publicidad.delegate = self
        Publicidad.loadRequest(self.loadURL())
        
        return Publicidad
    }
    
    func loadURL ()->NSURLRequest {
        
        var vul:ViewPAO = ViewPAO()
       var request:NSURLRequest = vul.loadURL()
        
        return request
        
    }
    

//pragma mark - Web View Delegate Methods
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        if navigationType == UIWebViewNavigationType.LinkClicked
        {
            UIApplication.sharedApplication().openURL(request.URL)
            return false
        }
        
        return true
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        
        // Change the height dynamically of the UIWebView to match the html content
        var jobSkillViewFrame: CGRect = Publicidad.frame
        jobSkillViewFrame.size.height = 1
        Publicidad.frame = jobSkillViewFrame
        var fittingSize: CGSize = (Publicidad.sizeThatFits(CGSizeZero))
        jobSkillViewFrame.size = fittingSize
        // webViewFrame.size.width = 276; Making sure that the webView doesn't get wider than 276 px
        Publicidad.frame = jobSkillViewFrame
        
        var jobSkillViewHeight = Publicidad.frame.size.height
        
        print("Altura webview: \(jobSkillViewHeight)")
        
        if jobSkillViewHeight < 10.0
        {
            Publicidad.hidden = true
        }
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        
    }
    
}