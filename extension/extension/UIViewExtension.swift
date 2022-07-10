import UIKit

extension UIView {
    //UIViewにaddBorderの拡張を定義
    func addBorder(color: UIColor, width: CGFloat) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }
    
    //UIViewにroundCornerの拡張を定義
    func roundCorner() {
        layer.cornerRadius = frame.height / 2
    }
}
