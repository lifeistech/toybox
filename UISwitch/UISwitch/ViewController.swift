import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightImageView: UIImageView!
    @IBOutlet var lightSwitch: UISwitch! {
        didSet {
            lightSwitch.setOn(false, animated: false)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapSwitch() {
        //関連付けするactionはValue Changed
        if lightSwitch.isOn {
            lightImageView.image = UIImage(systemName: "lightbulb.fill")
            lightImageView.tintColor = .systemYellow
        } else {
            lightImageView.image = UIImage(systemName: "lightbulb")
            lightImageView.tintColor = .lightGray
        }
    }
}

