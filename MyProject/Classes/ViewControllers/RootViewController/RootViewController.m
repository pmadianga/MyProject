//
//  RootViewController.m
//  MyProject
//
//  Created by Prudence MADIANGA on 13/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize testButton = _testButton;
@synthesize blueViewController = _blueViewController;
@synthesize redViewController = _redViewController;
@synthesize blueButton = _blueButton;
@synthesize redButton = _redButton;

- (void) dealloc
{
    self.testButton = nil;
    self.blueViewController = nil;
    self.redViewController = nil;
    self.redButton = nil;
    self.blueButton = nil;
    
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    BlueViewController * blueViewController = [[BlueViewController alloc] initWithNibName:@"BlueViewController" bundle:nil];
    self.blueViewController = blueViewController;
    [blueViewController release];
    
    RedViewController * redViewController = [[RedViewController alloc] initWithNibName:@"RedViewController" bundle:nil];
    self.redViewController = redViewController;
    [redViewController release];
    
    self.navigationItem.title = @"Root View";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - IBAction

-(IBAction)redButtonDidSelected:(id)sender
{
    [self.navigationController pushViewController:self.redViewController animated:YES];
    NSLog(@"Red view display");
}

-(IBAction)blueButtonDidSelected:(id)sender
{
    [self.navigationController pushViewController:self.blueViewController animated:YES];
    NSLog(@"Blue view display");
}

-(IBAction)testButtonDidSelected:(id)sender
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                        message:@"Test button did clicked"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
    [alertView release];

}

@end
