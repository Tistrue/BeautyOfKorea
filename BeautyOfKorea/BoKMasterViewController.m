//
//  BoKMasterViewController.m
//  BeautyOfKorea
//
//  Created by Dong Yoon Park on 1/21/12.
//  Copyright (c) 2012 http://www.cre8ive.kr. All rights reserved.
//

#import "BoKMasterViewController.h"
#import "BoKDetailViewController.h"
#import "BoKMapViewController.h"

@implementation BoKMasterViewController
@synthesize btnMenu1;
@synthesize btnMenu2;
@synthesize btnMenu3;
@synthesize btnMenu4;
@synthesize btnMenu5;
@synthesize btnMenu6;
@synthesize ivBackground;
@synthesize ivTitle;
@synthesize detailViewController = _detailViewController;

-(IBAction)btnMenu1Touched {
    if (!self.detailViewController) {
        self.detailViewController = [[[BoKDetailViewController alloc] initWithNibName:@"BoKDetailViewController" bundle:nil] autorelease];
    }
    self.detailViewController.currentMenu = 1;
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}

-(IBAction)btnMenu2Touched {
    if (!self.detailViewController) {
        self.detailViewController = [[[BoKDetailViewController alloc] initWithNibName:@"BoKDetailViewController" bundle:nil] autorelease];
    }
    self.detailViewController.currentMenu = 2;
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}

-(IBAction)btnMenu3Touched {
    if (!self.detailViewController) {
        self.detailViewController = [[[BoKDetailViewController alloc] initWithNibName:@"BoKDetailViewController" bundle:nil] autorelease];
    }
    self.detailViewController.currentMenu = 3;
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}

-(IBAction)btnMenu4Touched {
    if (!self.detailViewController) {
        self.detailViewController = [[[BoKDetailViewController alloc] initWithNibName:@"BoKDetailViewController" bundle:nil] autorelease];
    }
    self.detailViewController.currentMenu = 4;
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}

-(IBAction)btnMenu5Touched {
    if (!self.detailViewController) {
        self.detailViewController = [[[BoKDetailViewController alloc] initWithNibName:@"BoKDetailViewController" bundle:nil] autorelease];
    }
    self.detailViewController.currentMenu = 5;
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}


-(IBAction)btnMenu6Touched {
    BoKMapViewController *mapViewController = 
    [[BoKMapViewController alloc] initWithNibName:@"BoKMapViewController" bundle:nil];
    [self.navigationController pushViewController:mapViewController animated:YES];
    [mapViewController release];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Master", @"Master");
    }
    return self;
}
							
- (void)dealloc
{
    [_detailViewController release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



@end
