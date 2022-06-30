import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var emojiSegmentedControl: UISegmentedControl! {
        didSet {
            //セグメントのタイトルを追加
            emojiSegmentedControl.setTitle("📱", forSegmentAt: 0)
            emojiSegmentedControl.setTitle("💻", forSegmentAt: 1)
            //指定した位置にセグメントを動的に追加
            emojiSegmentedControl.insertSegment(withTitle: "⌚️", at: 2, animated: false)
            emojiSegmentedControl.selectedSegmentIndex = 1
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didSelectSegment() {
        //関連付けするactionはValue Changed
        emojiLabel.text = emojiSegmentedControl.titleForSegment(at: emojiSegmentedControl.selectedSegmentIndex)
    }
}

