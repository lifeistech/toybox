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
        
        // 地図の表示範囲を指定
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        // 表示する緯度、経度を指定
        let coordinate = CLLocationCoordinate2DMake(35.6466594,139.7351873)
        // spanとcoordinateからRegionオブジェクトを作成
        let region = MKCoordinateRegion(center: coordinate, span:span)
        // MapViewに適用
        mapView.region = region
    }


}

