import CoreLocation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var notificationDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func setTimeIntervalNotification() {
        let intervals = [10, 30, 60]
        let alert = UIAlertController(title: "時間を指定", message: nil, preferredStyle: .alert)
        for interval in intervals {
            alert.addAction(UIAlertAction(title: "\(interval)秒", style: .default) {
                _ in
                NotificationManager.setTimeIntervalNotification(title: "\(interval)秒経ちました", timeInterval: TimeInterval(interval))
            })
        }
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel))
        present(alert, animated: true)
    }
    
    @IBAction func setCalenderNotification() {
        let alert = UIAlertController(title: "指定日時に通知を設定しますか？", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "はい", style: .default) {
            _ in
            NotificationManager.setCalendarNotification(title: "指定日時になりました", date: self.notificationDatePicker.date)
        })
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel))
        present(alert, animated: true)
    }
    
    @IBAction func setLocationNotification() {
        let locations = [
            ("Life is Tech! 東京オフィス", CLLocationCoordinate2D(latitude: 35.6469, longitude: 139.735869)),
            ("Life is Tech! 大阪オフィス", CLLocationCoordinate2D(latitude: 34.70493918, longitude: 135.50383534))
        ]
        let alert = UIAlertController(title: "場所を指定", message: nil, preferredStyle: .alert)
        for location in locations {
            alert.addAction(UIAlertAction(title: location.0, style: .default) {
                _ in
                NotificationManager.setLocationNotification(title: location.0, coordinate: location.1)
            })
        }
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel))
        present(alert, animated: true)
    }
}

