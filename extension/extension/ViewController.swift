import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var dateLabel: UILabel! {
        didSet {
            dateLabel.text = Date().toString()
            dateLabel.addBorder(color: .lightGray, width: 1)
            dateLabel.roundCorner()
        }
    }
    
    @IBOutlet var returnTextField: UITextField! {
        didSet {
            returnTextField.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

