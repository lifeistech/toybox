import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightImageView: UIImageView!
    @IBOutlet var lightSwitch: UISwitch! {
        didSet {
            //最初のスイッチの状態を定義
            lightSwitch.setOn(false, animated: false)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapSwitch() {
        //関連付けするactionはValue Changed
        if lightSwitch.isOn {
            //スイッチの状態が変化したときに画像を更新する(オンの場合)
            lightImageView.image = UIImage(systemName: "lightbulb.fill")
            lightImageView.tintColor = .systemYellow
        } else {
            //スイッチの状態が変化したときに画像を更新する(オフの場合)
            lightImageView.image = UIImage(systemName: "lightbulb")
            lightImageView.tintColor = .lightGray
        }
    }
}

