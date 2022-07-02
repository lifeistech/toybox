import Foundation
import UIKit

enum Weather: CaseIterable {
    case sunny
    case cloudy
    case rainy
    
    var title: String {
        switch self {
        case .sunny:
            return "晴れ"
        case .cloudy:
            return "曇り"
        case .rainy:
            return "雨"
        }
    }
    
    var image: UIImage {
        switch self {
        case .sunny:
            return UIImage(systemName: "sun.max")!
        case .cloudy:
            return UIImage(systemName: "cloud")!
        case .rainy:
            return UIImage(systemName: "cloud.rain")!
        }
    }
}

