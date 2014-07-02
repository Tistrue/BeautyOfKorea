//
//  BoKDetailViewController.h
//  BeautyOfKorea
//
//  Created by Dong Yoon Park on 1/21/12.
//  Copyright (c) 2012 http://www.cre8ive.kr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BoKDetailViewController : UIViewController
{
    IBOutlet UIButton *btnBack;
    IBOutlet UIButton *btnPhotos;
    IBOutlet UIScrollView *svContent;
    int currentMenu;
}

@property(nonatomic,retain) IBOutlet UIButton *btnBack;
@property(nonatomic,retain) IBOutlet UIButton *btnPhotos;
@property(nonatomic,retain) IBOutlet UIScrollView *svContent;
@property(assign) int currentMenu;

-(IBAction)btnBackTouched;
-(IBAction)btnPhotosTouched;

//@property (strong, nonatomic) id detailItem;
//@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
