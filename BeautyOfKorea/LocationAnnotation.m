//
//  LocationAnnotation.m
//  BeautyOfKorea
//
//  Created by Dong Yoon Park on 2/8/12.
//  Copyright (c) 2012 http://www.cre8ive.kr. All rights reserved.
//

#import "LocationAnnotation.h"
#import <MapKit/MapKit.h>

@implementation LocationAnnotation
@synthesize coordinate;
@synthesize currentTitle;
@synthesize currentSubTitle;

- (NSString *)subtitle {
    return currentSubTitle;
}

- (NSString *)title {
    return currentTitle;
}

-(id)initWithCoordinate:(CLLocationCoordinate2D) c {
    coordinate=c;
    return self;
}

@end