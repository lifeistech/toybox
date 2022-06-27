import UIKit

class TopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "トップ"
    }
    
    @IBAction func showDetail() {
        performSegue(withIdentifier: "toDetail", sender: nil)
    }
}

