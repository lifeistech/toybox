import CoreLocation
import UIKit

class ViewController: UIViewController {
    
    //指定日時をセットするDatePicker
    @IBOutlet var notificationDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //ボタンをタップしたときに表示されるアラート
    @IBAction func setTimeIntervalNotification() {
        let intervals = [10, 30, 60]
        let alert = UIAlertController(title: "時間を指定", message: nil, preferredStyle: .alert)
        //forで10,30,60秒それぞれのボタンを追加、タップしたら指定時間経過後の通知を登録
        for interval in intervals {
            alert.addAction(UIAlertAction(title: "\(interval)秒", style: .default) {
                _ in
                NotificationManager.setTimeIntervalNotification(title: "\(interval)秒経ちました", timeInterval: TimeInterval(interval))
            })
        }
        //キャンセルボタン
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel))
        present(alert, animated: true)
    }
    
    //ボタンをタップしたときに表示されるアラート
    @IBAction func setCalenderNotification() {
        let alert = UIAlertController(title: "指定日時に通知を設定しますか？", message: nil, preferredStyle: .alert)
        //DatePickerで指定した日時の通知を登録
        alert.addAction(UIAlertAction(title: "はい", style: .default) {
            _ in
            NotificationManager.setCalendarNotification(title: "指定日時になりました", date: self.notificationDatePicker.date)
        })
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel))
        present(alert, animated: true)
    }
    
    //ボタンをタップしたときに表示されるアラート
    @IBAction func setLocationNotification() {
        let locations = [
            //場所情報を追加
            ("Life is Tech! 東京オフィス", CLLocationCoordinate2D(latitude: 35.6469, longitude: 139.735869)),
            ("Life is Tech! 大阪オフィス", CLLocationCoordinate2D(latitude: 34.70493918, longitude: 135.50383534))
        ]
        let alert = UIAlertController(title: "場所を指定", message: nil, preferredStyle: .alert)
        //Life is Tech!東京・大阪オフィスそれぞれタップした場所での通知を登録
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

