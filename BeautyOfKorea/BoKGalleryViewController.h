//
//  BoKGalleryViewController.h
//  BeautyOfKorea
//
//  Created by DongYoonPark on 11/8/12.
//  Copyright (c) 2012 http://www.cre8ive.kr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BoKGalleryViewController : UIViewController
{
    IBOutlet UIButton *btnBack;
    IBOutlet UIScrollView *svContent;
    int currentMenu;
}
@property(nonatomic,retain) IBOutlet UIButton *btnBack;
@property(nonatomic,retain) IBOutlet UIScrollView *svContent;
@property(assign) int currentMenu;

-(IBAction)btnBackTouched;

@end
