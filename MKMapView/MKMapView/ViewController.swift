//
//  ViewController.swift
//  MKMapView
//
//  Created by 五十嵐諒 on 2022/08/12.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(35.6466594,139.7351873), span:span)
        mapView.region = region
    }


}

