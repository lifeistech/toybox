import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var deviceIcon: UIImageView!
    @IBOutlet var deviceSegment: UISegmentedControl! {
        didSet {
            deviceSegment.setTitle("📱", forSegmentAt: 0)
            deviceSegment.setTitle("💻", forSegmentAt: 1)
            deviceSegment.insertSegment(withTitle: "⌚️", at: 2, animated: false)
            deviceSegment.selectedSegmentIndex = 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didSelectSegment() {
        //関連付けするactionはValue Changed
        switch deviceSegment.selectedSegmentIndex {
        case 0:
            deviceIcon.image = UIImage(systemName: "iphone")
        case 1:
            deviceIcon.image = UIImage(systemName: "laptopcomputer")
        case 2:
            deviceIcon.image = UIImage(systemName: "applewatch")
        default:
            break
        }
    }
}

