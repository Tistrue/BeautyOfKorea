//
//  BoKDetailViewController.h
//  BeautyOfKorea
//
//  Created by Dong Yoon Park on 1/21/12.
//  Copyright (c) 2012 http://www.cre8ive.kr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BoKDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
