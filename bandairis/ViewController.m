//
//  ViewController.m
//  bandairis
//
//  Created by WEB 03 - SISTEMAS on 3/23/16.
//  Copyright © 2016 Barboza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)callFacebook:(id)sender {
    NSURL *fbNativeAppURL = [NSURL URLWithString:@"fb://historiadeIRIS/"];
    
    // Check to make sure URL can be opened on device (whether the user has the Facebook app installed)
    if ( [[UIApplication sharedApplication] canOpenURL:fbNativeAppURL])
    {
        [[UIApplication sharedApplication] openURL:fbNativeAppURL];
    }
    else
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.facebook.com/historiadeIRIS/"]];
    }
}

@end
