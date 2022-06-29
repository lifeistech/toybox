import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var emojiSegment: UISegmentedControl! {
        didSet {
            //セグメントのタイトルを追加
            emojiSegment.setTitle("📱", forSegmentAt: 0)
            emojiSegment.setTitle("💻", forSegmentAt: 1)
            //指定した位置にセグメントを動的に追加
            emojiSegment.insertSegment(withTitle: "⌚️", at: 2, animated: false)
            emojiSegment.selectedSegmentIndex = 1
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didSelectSegment() {
        //関連付けするactionはValue Changed
        emojiLabel.text = emojiSegment.titleForSegment(at: emojiSegment.selectedSegmentIndex)
    }
}

