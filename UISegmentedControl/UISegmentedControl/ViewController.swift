import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var emojiSegment: UISegmentedControl! {
        didSet {
            emojiSegment.setTitle("📱", forSegmentAt: 0)
            emojiSegment.setTitle("💻", forSegmentAt: 1)
            emojiSegment.insertSegment(withTitle: "⌚️", at: 2, animated: false)
            emojiSegment.selectedSegmentIndex = 1
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didSelectSegment(_ sender: UISegmentedControl) {
        emojiLabel.text = sender.titleForSegment(at: sender.selectedSegmentIndex)
    }
}
