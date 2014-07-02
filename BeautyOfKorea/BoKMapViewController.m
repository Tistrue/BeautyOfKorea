//
//  BoKMapViewController.m
//  BeautyOfKorea
//
//  Created by Dong Yoon Park on 2/7/12.
//  Copyright (c) 2012 http://www.cre8ive.kr. All rights reserved.
//

#import "BoKMapViewController.h"
#import "BoKDetailViewController.h"

@implementation BoKMapViewController
@synthesize btnBack;
@synthesize mapView;
@synthesize mapType;
@synthesize locationAnnotation;

-(IBAction)btnBackTouched {
    [self.navigationController popViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView 
             viewForAnnotation:(id <MKAnnotation>) annotation {
    MKAnnotationView *annView = [[MKAnnotationView alloc] initWithAnnotation:annotation 
                                                             reuseIdentifier:@"currentloc"];
    annView.canShowCallout = YES;
    
    UIButton *btnDetailInfo = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    btnDetailInfo.frame = CGRectMake(0, 0, 23, 23);
    btnDetailInfo.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    btnDetailInfo.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    
    annView.rightCalloutAccessoryView = btnDetailInfo;
    annView.image = [UIImage imageNamed:@"annotationIcon.png"];
    annView.canShowCallout = YES;
    
    return annView;
}

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view 
calloutAccessoryControlTapped:(UIControl *)control {
    LocationAnnotation *temp = view.annotation;
    BoKDetailViewController *detailViewController = 
    [[BoKDetailViewController alloc] initWithNibName:@"BoKDetailViewController" bundle:nil];
    if([temp.title  isEqual: @"병산서원(屛山書院)") {
        deta]ilViewController.currentMenu = 1;
    }
    else if(temp.title == @"불국사(佛國寺)") {
        detailViewController.currentMenu = 2;
    }
    else if(temp.title == @"부석사(浮石寺)") {
        detailViewController.currentMenu = 3;
    }
    else if(temp.title == @"첨성대(瞻星臺)") {
        detailViewController.currentMenu = 4;
    }
    else if(temp.title == @"하회마을") {
        detailViewController.currentMenu = 5;
    }
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(IBAction)mapTypeChanged {
    if(mapType.selectedSegmentIndex==0){
        mapView.mapType=MKMapTypeStandard;
    }
    else if (mapType.selectedSegmentIndex==1){
        mapView.mapType=MKMapTypeSatellite;
    }
    else if (mapType.selectedSegmentIndex==2){
        mapView.mapType=MKMapTypeHybrid;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    mapView.showsUserLocation = NO;
    mapView.mapType = MKMapTypeStandard;
    mapView.delegate = self;
    CLLocationCoordinate2D location;
    
    location.latitude = 35.78995;
    location.longitude = 129.331838;
    locationAnnotation = [[LocationAnnotation alloc] initWithCoordinate:location];
    [locationAnnotation setCurrentTitle:@"불국사(佛國寺)"];
    [locationAnnotation setCurrentSubTitle:@"Bulguksa Temple"];	
    [mapView addAnnotation:locationAnnotation];
    
    location.latitude = 36.634187;
    location.longitude = 128.68585;
    locationAnnotation = [[LocationAnnotation alloc] initWithCoordinate:location];
    [locationAnnotation setCurrentTitle:@"병산서원(屛山書院)"];
    [locationAnnotation setCurrentSubTitle:@"Byungsan Seowon"];
    [mapView addAnnotation:locationAnnotation];
    
    location.latitude = 36.538778;
    location.longitude = 128.519547;
    locationAnnotation = [[LocationAnnotation alloc] initWithCoordinate:location];
    [locationAnnotation setCurrentTitle:@"하회마을"];
    [locationAnnotation setCurrentSubTitle:@"Hahoe Village"];
    [mapView addAnnotation:locationAnnotation];
    
    location.latitude = 36.998963;
    location.longitude = 128.687453;
    locationAnnotation = [[LocationAnnotation alloc] initWithCoordinate:location];
    [locationAnnotation setCurrentTitle:@"부석사(浮石寺)"];
    [locationAnnotation setCurrentSubTitle:@"Busoksa Temple"];
    [mapView addAnnotation:locationAnnotation];
    
    location.latitude = 35.835089;
    location.longitude = 129.218992;
    locationAnnotation = [[LocationAnnotation alloc] initWithCoordinate:location];
    [locationAnnotation setCurrentTitle:@"첨성대(瞻星臺)"];
    [locationAnnotation setCurrentSubTitle:@"Cheomseongdae"];
    [mapView addAnnotation:locationAnnotation];
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 1; 
    span.longitudeDelta = 1;
    
    region.span = span;
    region.center = location;
    
    [mapView setRegion:region animated:FALSE];
    [mapView regionThatFits:region];
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
