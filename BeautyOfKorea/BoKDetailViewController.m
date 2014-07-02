//
//  BoKDetailViewController.m
//  BeautyOfKorea
//
//  Created by Dong Yoon Park on 1/21/12.
//  Copyright (c) 2012 http://www.cre8ive.kr. All rights reserved.
//

#import "BoKDetailViewController.h"
#import "BoKGalleryViewController.h"

//@interface BoKDetailViewController ()
//- (void)configureView;
//@end

@implementation BoKDetailViewController
@synthesize currentMenu;
@synthesize btnBack;
@synthesize btnPhotos;
@synthesize svContent;

-(IBAction)btnBackTouched {
    [self.navigationController popViewControllerAnimated:YES];
}

-(IBAction)btnPhotosTouched { 
    BoKGalleryViewController *galleryViewController = [[BoKGalleryViewController alloc] initWithNibName:@"BoKGalleryViewController" bundle:nil];
    galleryViewController.currentMenu = self.currentMenu;
    [self.navigationController pushViewController:galleryViewController animated:YES];
    //[galleryViewController release];
}

//@synthesize detailItem = _detailItem;
//@synthesize detailDescriptionLabel = _detailDescriptionLabel;

- (void)dealloc
{
//    [_detailItem release];
//    [_detailDescriptionLabel release];
    [super dealloc];
}

#pragma mark - Managing the detail item

//- (void)setDetailItem:(id)newDetailItem
//{
//    if (_detailItem != newDetailItem) {
//        [_detailItem release]; 
//        _detailItem = [newDetailItem retain]; 
//
//        // Update the view.
//        [self configureView];
//    }
//}

//- (void)configureView
//{
//    // Update the user interface for the detail item.
//
//    if (self.detailItem) {
//        self.detailDescriptionLabel.text = [self.detailItem description];
//    }
//}

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
    //[self configureView];
    
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

    UIImageView *imageView;
    
    switch (self.currentMenu) {
        case 1:
            imageView = [[UIImageView alloc] 
                         initWithImage:[UIImage imageNamed:@"introByungsan.png"]];
            break;
        case 2:
            imageView = [[UIImageView alloc] 
                         initWithImage:[UIImage imageNamed:@"introBulguksa.png"]];
            break;
        case 3:
            imageView = [[UIImageView alloc] 
                         initWithImage:[UIImage imageNamed:@"introBusoksa.png"]];
            break;
        case 4:
            imageView = [[UIImageView alloc] 
                         initWithImage:[UIImage imageNamed:@"introChumsongdae.png"]];
            break;
        case 5:
            imageView = [[UIImageView alloc] 
                         initWithImage:[UIImage imageNamed:@"introAndong.png"]];
            break;
        default:
            break;
    }
    
    // 이미 svContent 안에 UIImageView가 있다면 제거한다 
    for(UIImageView *subview in [svContent subviews]) {
        [subview removeFromSuperview];
    }
    
    [svContent addSubview:imageView];
    [svContent setContentSize:CGSizeMake(imageView.frame.size.width, 
                                         imageView.frame.size.height)];
    [svContent setScrollEnabled:YES];
    
    // 다른 메뉴에서 스크롤을 한 경우 위치를 초기화를 해주기 위해서 스크롤뷰의 시작점으로 컨텐트를 이동한다 
    [svContent setContentOffset:CGPointMake(0.0, 0.0)];
    [imageView release];
    

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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}
							
@end
