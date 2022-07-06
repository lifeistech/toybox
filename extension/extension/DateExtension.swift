import Foundation

extension Date {
    //Date型でtoStringが使えるように拡張を定義
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter.string(from: self)
    }
}
