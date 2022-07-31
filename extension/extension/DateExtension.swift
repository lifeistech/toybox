import Foundation

extension Date {
    //Date型で 年/月/日 のStringが使えるように拡張を定義
    var yearMonthDateFormat: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter.string(from: self)
    }
}
