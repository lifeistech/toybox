import Foundation
import UIKit

enum Hours: CaseIterable {
    case morning
    case afternoon
    case night
    
    var title: String {
        switch self {
        case .morning:
            return "朝"
        case .afternoon:
            return "昼"
        case .night:
            return "夜"
        }
    }
    
    var image: UIImage {
        switch self {
        case .morning:
            return UIImage(systemName: "sun.and.horizon")!
        case .afternoon:
            return UIImage(systemName: "sun.max")!
        case .night:
            return UIImage(systemName: "moon.stars")!
        }
    }
}

