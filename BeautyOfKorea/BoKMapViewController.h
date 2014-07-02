//
//  BoKMapViewController.h
//  BeautyOfKorea
//
//  Created by Dong Yoon Park on 2/7/12.
//  Copyright (c) 2012 http://www.cre8ive.kr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import "LocationAnnotation.h"

@interface BoKMapViewController : UIViewController <MKMapViewDelegate> {
    IBOutlet UIButton *btnBack;
    IBOutlet MKMapView *mapView;
    IBOutlet UISegmentedControl *mapType;
    LocationAnnotation *locationAnnotation;
}

@property(nonatomic,retain) IBOutlet UIButton *btnBack;
@property(nonatomic,retain) IBOutlet MKMapView *mapView;
@property(nonatomic,retain) IBOutlet UISegmentedControl *mapType;
@property(nonatomic,retain) LocationAnnotation *locationAnnotation;

-(IBAction)btnBackTouched;
-(IBAction)mapTypeChanged;

@end