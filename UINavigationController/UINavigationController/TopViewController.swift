import UIKit

class TopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "トップ"
        //NavigationBarのタイトル表示を常に小さくする設定
        navigationItem.largeTitleDisplayMode = .never
    }
    
    //ボタンが押されたときにSegueを実行
    @IBAction func showDetail() {
        performSegue(withIdentifier: "toDetail", sender: nil)
    }
}

