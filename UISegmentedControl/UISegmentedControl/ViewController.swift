import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var emojiSegmentedControl: UISegmentedControl! {
        didSet {
            //セグメントのタイトルを追加
            emojiSegmentedControl.setTitle("📱", forSegmentAt: 0)
            emojiSegmentedControl.setTitle("💻", forSegmentAt: 1)
            //Storyboard上に2つしかセグメントがない状態で3つ目にsetTitleしてもエラーが出てしまうので、insertSegmentして要素を1つ追加する
            emojiSegmentedControl.insertSegment(withTitle: "⌚️", at: 2, animated: false)
            //最初に選択されているセグメントを決める
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

