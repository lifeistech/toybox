import UIKit

class TopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "トップ"
        navigationItem.largeTitleDisplayMode = .never
    }
    
    @IBAction func showDetail() {
        performSegue(withIdentifier: "toDetail", sender: nil)
    }
}

