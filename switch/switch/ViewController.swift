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
    
    //関連付けするactionはValue Changed
    @IBAction func didSelectSegment() {
        //caseで条件分岐を行う
        switch deviceSegment.selectedSegmentIndex {
            //selectedSegmentIndexが0のとき
        case 0:
            deviceIcon.image = UIImage(systemName: "iphone")
            //selectedSegmentIndexが1のとき
        case 1:
            deviceIcon.image = UIImage(systemName: "laptopcomputer")
            //selectedSegmentIndexが2のとき
        case 2:
            deviceIcon.image = UIImage(systemName: "applewatch")
        default:
            break
        }
    }
}

