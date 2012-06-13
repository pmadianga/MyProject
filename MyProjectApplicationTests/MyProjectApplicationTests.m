//
//  MyProjectApplicationTests.m
//  MyProjectApplicationTests
//
//  Created by mac_serveur_adp_1 on 13/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyProjectApplicationTests.h"

@implementation MyProjectApplicationTests

- (void)setUp
{
    // Set-up code here.
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    rootViewController = appDelegate.rootViewController;
    rootView = rootViewController.view;
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    NSString * stringTest = @"test button";
    BOOL res;
    
    UIButton * testButton = (UIButton*) [rootView viewWithTag:1];
    NSString * titleLabelText = testButton.titleLabel.text;
    
    res = [stringTest isEqualToString:titleLabelText];
    
    STAssertTrue(res, @"le texte du bouton n'est pas correcte");
    
    
}

@end
