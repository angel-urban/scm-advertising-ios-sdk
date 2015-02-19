//
//  ViewController.m
//  SDK-iosV4
//
//  Created by angel.urban on 13/2/15.
//  Copyright (c) 2015 SCMSpain. All rights reserved.
//

#import "ViewController.h"

#import "PAOWebView.h"

#import "SDK_iosV4-Swift.h" //<-Importacion del archi cabecera de Swift

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Objetive-C
    Publicidad = [[PAOWebView alloc]init];
    [self.view addSubview:Publicidad.RetornarBanner];
    
    //Swift
    //Banner = [[WebViewPAO alloc]init];
    //[self.view addSubview:Banner.RetornarPublicidad];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
