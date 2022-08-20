//
//  ViewController.swift
//  MKMapView
//
//  Created by 五十嵐諒 on 2022/08/12.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        
        // 地図の表示範囲を指定
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        // 表示する中心の緯度、経度を指定
        let coordinate = CLLocationCoordinate2D(latitude: 35.6431, longitude: 139.7342)
        // spanとcoordinateからRegionオブジェクトを作成
        let region = MKCoordinateRegion(center: coordinate, span:span)
        // MapViewに適用
        mapView.region = region
        
        // pinを作成
        let pin = MKPointAnnotation()
        // pinのラベルを指定
        pin.title = "Life is Tech! 白金高輪校"
        // pinの座標を指定
        pin.coordinate = CLLocationCoordinate2D(latitude: 35.6466, longitude: 139.7351)
        // MapViewにpinを追加
        mapView.addAnnotation(pin)
        
    }
    
    // ボタンが押された時に現在地を取得する
    @IBAction func currentLocation(){
        locationManager!.requestWhenInUseAuthorization()
        // 位置情報を更新
        mapView.region.center = mapView.userLocation.coordinate
    }
}

// CLLocationManagerに関するextension
extension ViewController: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
            // 許可されてない場合
        case .notDetermined:
            // 許可を求める
            manager.requestWhenInUseAuthorization()
            // 拒否されてる場合
        case .restricted, .denied:
            // 何もしない
            break
            // 許可されている場合
        case .authorizedAlways, .authorizedWhenInUse:
            // 現在地の取得を開始
            manager.startUpdatingLocation()
            break
        default:
            break
        }
    }
}
