import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var numberSlider: UISlider! {
        didSet {
            //Sliderの設定
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
    
    @IBAction func didChangeSliderValue() {
        //関連付けするactionはValue Changed
        numberLabel.text = String(numberSlider.value)
    }
}

