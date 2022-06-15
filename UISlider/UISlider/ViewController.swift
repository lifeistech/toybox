import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var numberSlider: UISlider! {
        didSet {
            //この項目は全てStoryboardで設定できます。書かなくても実行可能です。
            numberSlider.minimumValue = 0
            numberSlider.maximumValue = 50
            numberSlider.minimumTrackTintColor = UIColor.cyan
            numberSlider.maximumTrackTintColor = UIColor.orange
            numberSlider.minimumValueImage = UIImage(systemName: "volume")
            numberSlider.maximumValueImage = UIImage(systemName: "volume.3")
            numberSlider.setValue(0, animated: false)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didChangeSliderValue(_ slider: UISlider) {
        numberLabel.text = String(slider.value)
    }
}

