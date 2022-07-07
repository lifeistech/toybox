import CoreLocation
import Foundation
import NotificationCenter

class NotificationManager {
    
    static func setTimeIntervalNotification(title: String, timeInterval: TimeInterval) {
        UserNotifications.UNUserNotificationCenter.current().requestAuthorization(options:[.badge, .alert, .sound]) { granted, error in
            if granted {
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInterval, repeats: false)
                let notificationContent = UNMutableNotificationContent()
                notificationContent.title = title
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: notificationContent, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
    
    static func setCalendarNotification(title: String, date: Date) {
        UserNotifications.UNUserNotificationCenter.current().requestAuthorization(options:[.badge, .alert, .sound]) { granted, error in
            if granted {
                let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: date)
                let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
                let notificationContent = UNMutableNotificationContent()
                notificationContent.title = title
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: notificationContent, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
    
    static func setLocationNotification(title: String, coordinate: CLLocationCoordinate2D) {
        UserNotifications.UNUserNotificationCenter.current().requestAuthorization(options:[.badge, .alert, .sound]) { granted, error in
            if granted {
                let region = CLCircularRegion(center: coordinate, radius: 500.0, identifier: UUID().uuidString)
                region.notifyOnEntry = true
                region.notifyOnExit = false
                let trigger = UNLocationNotificationTrigger(region: region, repeats: false)
                let notificationContent = UNMutableNotificationContent()
                notificationContent.title = title
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: notificationContent, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}
