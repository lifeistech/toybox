import UIKit

extension UIView {
    func addBorder(color: UIColor, width: CGFloat) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }
    
    func roundCorner() {
        layer.cornerRadius = frame.height / 2
    }
}

