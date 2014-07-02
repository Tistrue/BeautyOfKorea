


//
//  BoKGalleryViewController.m
//  BeautyOfKorea
//
//  Created by Dong Yoon Park on 2/2/12.
//  Copyright (c) 2012 http://www.cre8ive.kr. All rights reserved.
//

#import "BoKGalleryViewController.h"
#define kScrollObjHeight 466.0
#define kScrollObjWidth 310.0
#define kNumPhotos 20

@implementation BoKGalleryViewController
@synthesize currentMenu;
@synthesize btnBack;
@synthesize svContent;

-(IBAction)btnBackTouched
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    svContent.clipsToBounds = YES;
    svContent.scrollEnabled = YES;
    svContent.directionalLockEnabled = YES;
    svContent.pagingEnabled = YES;
    
    for (int i = 1; i < kNumPhotos; i++) {
        NSString *imageName;
        if (i<10)
            imageName = [NSString stringWithFormat:@"photos_%d_0%d.JPG", currentMenu, i];
        else
            imageName = [NSString stringWithFormat:@"photos_%d_%d.JPG", currentMenu, i];
        UIImage *image = [UIImage imageNamed:imageName];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        CGRect rect = imageView.frame;
        rect.size.height = kScrollObjHeight;
        rect.size.width = kScrollObjWidth;
        imageView.frame = rect;
        imageView.tag = i+1;
        [svContent addSubview:imageView];
        [imageView release];
    }
    [self layoutScrollImages];
}

- (void)layoutScrollImages {
    UIImageView *view = nil;
    NSArray *subviews = [svContent subviews];
    
    CGFloat curXLoc = 0;
    for (view in subviews) {
        if ([view isKindOfClass:[UIImageView class]] && view.tag > 0) {
            CGRect frame = view.frame;
            frame.origin = CGPointMake(curXLoc, 0);
            view.frame = frame;
            curXLoc += (kScrollObjWidth);
        }
    }
    
    [svContent setContentSize:
     CGSizeMake((kNumPhotos * kScrollObjWidth), [svContent bounds].size.height)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
