import UIKit

class TopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "トップ"
        //NavigationBarのタイトル表示を常に小さくする設定
        navigationItem.largeTitleDisplayMode = .never
    }
    
    @IBAction func showDetail() {
        //画面遷移を行う
        performSegue(withIdentifier: "toDetail", sender: nil)
    }
}

