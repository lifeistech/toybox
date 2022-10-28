import UIKit
//TODO: コメントは適当なのでREADME フェーズできちんと書く
class ViewController: UIViewController {

    //Blur View
    @IBOutlet var blurView: UIVisualEffectView! {
        didSet {
            //さまざまなエフェクトを指定可能(Storybaordでも指定可能)
            blurView.effect = UIBlurEffect(style: .regular)
        }
    }

    //VibrancyEffectView
    //TODO: READMEかここかどちらかにVibrancyとBlurの違いを説明する
    @IBOutlet var vibrancyView: UIVisualEffectView! {
        didSet {
            //さまざまなスタイルのVibrancyを定義可能(storyboardでも指定可能)
            vibrancyView.effect = UIVibrancyEffect(blurEffect: UIBlurEffect(style: .regular), style: .label)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
