//
//  LocationAnnotation.h
//  BeautyOfKorea
//
//  Created by Dong Yoon Park on 2/8/12.
//  Copyright (c) 2012 http://www.cre8ive.kr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface LocationAnnotation : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
    NSString *currentSubTitle;
    NSString *currentTitle;
}

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, retain) NSString *currentTitle;
@property (nonatomic, retain) NSString *currentSubTitle;

- (NSString *)title;
- (NSString *)subtitle;
- (id)initWithCoordinate:(CLLocationCoordinate2D) c;

@end