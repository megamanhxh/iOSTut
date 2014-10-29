//
//  ViewController.swift
//  Tut9Ex1
//
//  Created by Megamanhxh on 10/27/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import UIKit
import MapKit;

class ViewController: UIViewController, CLLocationManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.requestAlwaysAuthorization();
        if (CLLocationManager.locationServicesEnabled()){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()

        }
        
    }
    
    let locationManager = CLLocationManager()
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: mapView.userLocation.coordinate.latitude, longitude: mapView.userLocation.coordinate.longitude)
        let span = MKCoordinateSpanMake(0.05, 0.05);
        
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true);
        let annotation = MKPointAnnotation();
        
        annotation.setCoordinate(location);
        annotation.title = "Manama";
        annotation.subtitle = "Bahrain";
        
        mapView.addAnnotation(annotation);
    }

    @IBOutlet weak var mapView: MKMapView!
    
}

