import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var numberSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider(numberSlider)
    }
    
    func setupSlider(_ slider: UISlider) {
        //この関数の中の項目は全てStoryboardで設定できます。書かなくても実行可能です。
        slider.minimumValue = 0
        slider.maximumValue = 50
        slider.minimumTrackTintColor = #colorLiteral(red: 0.4156862745, green: 0.768627451, blue: 0.862745098, alpha: 1)
        slider.maximumTrackTintColor = #colorLiteral(red: 1, green: 0.8392156863, blue: 0.03921568627, alpha: 1)
        slider.minimumValueImage = UIImage(systemName: "volume")
        slider.maximumValueImage = UIImage(systemName: "volume.3")
        slider.setValue(0, animated: false)
    }
    
    @IBAction func didChangeSliderValue(_ slider: UISlider) {
        numberLabel.text = String(slider.value)
    }

}

