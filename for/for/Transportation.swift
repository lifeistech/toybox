import Foundation
import UIKit

enum Transportation: CaseIterable {
    case bus
    case train
    case airplane
    
    var title: String {
        switch self {
        case .bus:
            return "バス"
        case .train:
            return "電車"
        case .airplane:
            return "飛行機"
        }
    }
    
    var image: UIImage {
        switch self {
        case .bus:
            return UIImage(systemName: "bus")!
        case .train:
            return UIImage(systemName: "tram")!
        case .airplane:
            return UIImage(systemName: "airplane")!
        }
    }
}
