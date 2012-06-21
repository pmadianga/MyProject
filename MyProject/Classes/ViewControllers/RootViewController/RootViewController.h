//
//  RootViewController.h
//  MyProject
//
//  Created by Prudence MADIANGA on 13/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlueViewController.h"
#import "RedViewController.h"

@interface RootViewController : UIViewController
{
    UIButton * _testButton;
    
    UIButton * _redButton;
    
    UIButton * _blueButton;
    
    BlueViewController * _blueViewController;
    
    RedViewController * _redViewController;
}

@property (nonatomic, retain) IBOutlet UIButton * testButton;

@property (nonatomic, retain) IBOutlet UIButton * redButton;

@property (nonatomic, retain) IBOutlet UIButton * blueButton;

@property (nonatomic, retain) BlueViewController * blueViewController;

@property (nonatomic, retain) RedViewController * redViewController;

-(IBAction)redButtonDidSelected:(id)sender;

-(IBAction)blueButtonDidSelected:(id)sender;

-(IBAction)testButtonDidSelected:(id)sender;


@end
