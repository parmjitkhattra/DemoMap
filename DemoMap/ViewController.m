//
//  ViewController.m
//  DemoMap
//
//  Created by KHATTRA on 05/12/14.
//  Copyright (c) 2014 xenon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
//changing demo
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _mapView.showsUserLocation =YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)zoomIn:(id)sender {
    MKUserLocation *userLocqtion =_mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocqtion.location.coordinate, 2000, 2000);
    [_mapView setRegion:region animated:NO];
}

- (IBAction)changeMapType:(id)sender {
}
@end
