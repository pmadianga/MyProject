//
//  MyProjectApplicationTests.h
//  MyProjectApplicationTests
//
//  Created by mac_serveur_adp_1 on 13/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "RootViewController.h"
#import "AppDelegate.h"

@interface MyProjectApplicationTests : SenTestCase
{
    AppDelegate * appDelegate;
    RootViewController * rootViewController;
    UIView * rootView;
}

@end
