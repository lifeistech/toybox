import CoreLocation
import Foundation
import NotificationCenter

class NotificationManager {
    
    //アラートウィジェットで選択した通知のリクエストを登録
    static func setTimeIntervalNotification(title: String, timeInterval: TimeInterval) {
        UserNotifications.UNUserNotificationCenter.current().requestAuthorization(options:[.badge, .alert, .sound]) { granted, error in
            if granted {
                //triggerとは通知が送られる条件(今回の場合は時間経過)
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInterval, repeats: false)
                //contentとは実際に通知に表示される内容
                let notificationContent = UNMutableNotificationContent()
                notificationContent.title = title
                //contentとtriggerを持つリクエストを作成
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: notificationContent, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
    
    //アラートウィジェットで設定した日時の通知のリクエストを登録
    static func setCalendarNotification(title: String, date: Date) {
        UserNotifications.UNUserNotificationCenter.current().requestAuthorization(options:[.badge, .alert, .sound]) { granted, error in
            if granted {
                let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: date)
                //この場合はtriggerに上記のdateComponents(指定日時)を設定している
                let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
                let notificationContent = UNMutableNotificationContent()
                notificationContent.title = title
                //contentとtriggerを持つリクエストを作成
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: notificationContent, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
    
    //アラートウィジェットで設定した場所の通知のリクエストを登録
    static func setLocationNotification(title: String, coordinate: CLLocationCoordinate2D) {
        UserNotifications.UNUserNotificationCenter.current().requestAuthorization(options:[.badge, .alert, .sound]) { granted, error in
            if granted {
                let region = CLCircularRegion(center: coordinate, radius: 500.0, identifier: UUID().uuidString)
                region.notifyOnEntry = true
                region.notifyOnExit = false
                //この場合はtriggerに上記のregion(場所)を指定している
                let trigger = UNLocationNotificationTrigger(region: region, repeats: false)
                let notificationContent = UNMutableNotificationContent()
                notificationContent.title = title
                //contentとtriggerを持つリクエストを作成
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: notificationContent, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}
